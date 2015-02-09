'use strict';

var _ = require('lodash');
var ElementType = require('./element-type.model');

// Get list of elementTypes
exports.index = function(req, res) {
  ElementType.find(function (err, elementTypes) {
    if(err) { return handleError(res, err); }
    return res.json(200, elementTypes);
  });
};

// Get a single elementType
exports.show = function(req, res) {
  ElementType.findById(req.params.id, function (err, elementType) {
    if(err) { return handleError(res, err); }
    if(!elementType) { return res.send(404); }
    return res.json(elementType);
  });
};

// Creates a new elementType in the DB.
exports.create = function(req, res) {
  ElementType.create(req.body, function(err, elementType) {
    if(err) { return handleError(res, err); }
    return res.json(201, elementType);
  });
};

// Updates an existing elementType in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  ElementType.findById(req.params.id, function (err, elementType) {
    if (err) { return handleError(res, err); }
    if(!elementType) { return res.send(404); }
    var updated = _.merge(elementType, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.json(200, elementType);
    });
  });
};

// Deletes a elementType from the DB.
exports.destroy = function(req, res) {
  ElementType.findById(req.params.id, function (err, elementType) {
    if(err) { return handleError(res, err); }
    if(!elementType) { return res.send(404); }
    elementType.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}