'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ElementSchema = new Schema({
  name: String,
  info: String,
  active: Boolean
});

module.exports = mongoose.model('Element', ElementSchema);