/**
 * Cordova User Notifications Plugin
 */

module.exports.removeAllDelivered = function (successCallback) {
  cordova.exec(
    successCallback,
    function () {
      console.log('Error');
    },
    'UserNotifications',
    'removeAllDelivered',
    []
  );
};
