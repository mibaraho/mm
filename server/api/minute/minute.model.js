'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var MinuteSchema = new Schema({
  name: String,
  location: String,
  date: { type : Date, default: Date.now },
  info: String,
  author: { type: mongoose.Schema.Types.ObjectId, ref: 'User ' },
  elements: [{ type: mongoose.Schema.Types.ObjectId, ref: 'User ' }],
  state: { type : String,  default: 'created' },
  folder: { type : String,  default: 'inbox' },
  active: { type : Boolean,  default: true }
});

module.exports = mongoose.model('Minute', MinuteSchema);