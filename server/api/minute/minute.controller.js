'use strict';

var _ = require('lodash');
var Minute = require('./minute.model');

// Get list of minutes
exports.index = function(req, res) {
  Minute.find(function (err, minutes) {
    if(err) { return handleError(res, err); }
    return res.json(200, minutes);
  });
};

// Get a single minute
exports.show = function(req, res) {
  Minute.findById(req.params.id, function (err, minute) {
    if(err) { return handleError(res, err); }
    if(!minute) { return res.send(404); }
    return res.json(minute);
  });
};

// Creates a new minute in the DB.
exports.create = function(req, res) {
  Minute.create(req.body, function(err, minute) {
    if(err) { return handleError(res, err); }
    return res.json(201, minute);
  });
};

// Updates an existing minute in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Minute.findById(req.params.id, function (err, minute) {
    if (err) { return handleError(res, err); }
    if(!minute) { return res.send(404); }
    var updated = _.merge(minute, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.json(200, minute);
    });
  });
};

// Deletes a minute from the DB.
exports.destroy = function(req, res) {
  Minute.findById(req.params.id, function (err, minute) {
    if(err) { return handleError(res, err); }
    if(!minute) { return res.send(404); }
    minute.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}