'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ElementTypeSchema = new Schema({
  name: String,
  info: String,
  active: Boolean
});

module.exports = mongoose.model('ElementType', ElementTypeSchema);