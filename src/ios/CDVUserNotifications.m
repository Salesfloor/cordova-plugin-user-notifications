#import "CDVUserNotifications.h"
#import "UserNotifications/UserNotifications.h"

@implementation CDVUserNotifications

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command
{
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center removeAllDeliveredNotifications];
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
