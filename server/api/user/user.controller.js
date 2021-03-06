'use strict';

var User = require('./user.model');
var Organization = require('../organization/organization.model');
var passport = require('passport');
var config = require('../../config/environment');
var jwt = require('jsonwebtoken');

var validationError = function(res, err) {
  return res.json(422, err);
};

/**
 * Get list of users
 * restriction: 'admin'
 */
exports.index = function(req, res) {
  User.find({}, '-salt -hashedPassword', function (err, users) {
    if(err) return res.send(500, err);
    res.json(200, users);
  });
};

/**
 * Creates a new user
 */
exports.create = function (req, res, next) {
  //It exposes 3 options for creating a user:
  //
  //1. Creating a user and associating him an organization with a not given name (as in the simple
  //self-service user who creates an individual account)
  //
  //2. Creating a user and associating him an organization with a given name (as in the user interface allowing you to set your company name)
  //
  //3. Creating a user and associating an existing organization.
  //Comment 1: Consider a second version who creater an organization based in the organization controller and not in
  //the organization object.
  //Comment 2: Consider the invitation process while adding new users.

  //Case 1
  if(!req.body.organizationName&&!req.body._organization) {
    var organization = new Organization({ name : generateCompanyNameBasedOnUserName(req.body.name)});
    organization.save(function(saveOrganizationError){
      if(saveOrganizationError) return handleError(res, saveOrganizationError);
      //If we created the organization, we are ready to create the user.
      req.body._organization = organization._id;
      var newUser = new User(req.body);
      newUser.provider = 'local';
      newUser.role = 'user';
      newUser.save(function(saveUserError, user) {
        if (saveUserError) {
          //Given an error saving the user, we have to delete the organization we just created.
          Organization.findByIdAndRemove( organization._id, function(removeOrganizationError){
            if(removeOrganizationError) return handleError(res, removeOrganizationError);
            return validationError(res, saveUserError);
          });
        } else {
          var token = jwt.sign({_id: user._id }, config.secrets.session, { expiresInMinutes: 60*5 });
          res.json({ token: token });
        }
      });
    });
  } else
  if(req.body.organizationName&&!req.body._organization) {
    var organization = new Organization({ name : req.body.organizationName});
    organization.save(function(saveOrganizationError){
      if(saveOrganizationError) return handleError(res, saveOrganizationError);
      //If we created the organization, we are ready to create the user.
      req.body._organization = organization._id;
      var newUser = new User(req.body);
      newUser.provider = 'local';
      newUser.role = 'user';
      newUser.save(function(saveUserError, user) {
        if (saveUserError) {
          //Given an error saving the user, we have to delete the organization we just created.
          Organization.findByIdAndRemove( organization._id, function(removeOrganizationError){
            if(removeOrganizationError) return handleError(res, removeOrganizationError);
            return validationError(res, saveUserError);
          });
        } else {
          var token = jwt.sign({_id: user._id }, config.secrets.session, { expiresInMinutes: 60*5 });
          res.json({ token: token });
        }
      });
    });
  } else
  if(req.body._organization) {//TODO, generate an efficient way to create users by themselves, based on invitations
    var newUser = new User(req.body);
    newUser.provider = 'local';
    newUser.role = 'user';
    newUser.save(function(err, user) {
    if (err) return validationError(res, err);
    var token = jwt.sign({_id: user._id }, config.secrets.session, { expiresInMinutes: 60*5 });
    res.json({ token: token });
  });
  }
  
  
  
  
  

};

/**
 * Get a single user
 */
exports.show = function (req, res, next) {
  var userId = req.params.id;

  User.findById(userId, function (err, user) {
    if (err) return next(err);
    if (!user) return res.send(401);
    res.json(user.profile);
  });
};

/**
 * Deletes a user
 * restriction: 'admin'
 */
exports.destroy = function(req, res) {
  User.findByIdAndRemove(req.params.id, function(err, user) {
    if(err) return res.send(500, err);
    return res.send(204);
  });
};

/**
 * Change a users password
 */
exports.changePassword = function(req, res, next) {
  var userId = req.user._id;
  var oldPass = String(req.body.oldPassword);
  var newPass = String(req.body.newPassword);

  User.findById(userId, function (err, user) {
    if(user.authenticate(oldPass)) {
      user.password = newPass;
      user.save(function(err) {
        if (err) return validationError(res, err);
        res.send(200);
      });
    } else {
      res.send(403);
    }
  });
};

/**
 * Get my info
 */
exports.me = function(req, res, next) {
  var userId = req.user._id;
  User.findOne({
    _id: userId
  }, '-salt -hashedPassword', function(err, user) { // don't ever give out the password or salt
    if (err) return next(err);
    if (!user) return res.json(401);
    res.json(user);
  });
};

/**
 * Authentication callback
 */
exports.authCallback = function(req, res, next) {
  res.redirect('/');
};

/**
 * Handle error
 */
function handleError(res, err) {
  return res.send(500, err);
}

function generateCompanyNameBasedOnUserName(ownersName, lang){
  var template = 'Empresa de OWNERS_NAME';
  return template.replace('OWNERS_NAME', ownersName)
}