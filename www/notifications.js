/**
 * Cordova User Notifications Plugin
 */

module.exports.removeAllDelivered = function (options, successCallback) {
  cordova.exec(
    successCallback,
    function () {
      console.log('Error');
    },
    'UserNotifications',
    'removeAllDelivered',
    [options]
  );
};
