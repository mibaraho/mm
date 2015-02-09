/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var ElementType = require('./element-type.model');

exports.register = function(socket) {
  ElementType.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  ElementType.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('element-type:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('element-type:remove', doc);
}