/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var Minute = require('./minute.model');

exports.register = function(socket) {
  Minute.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  Minute.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('minute:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('minute:remove', doc);
}