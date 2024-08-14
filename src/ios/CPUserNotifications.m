#import "CPUserNotifications.h"

@implementation CPUserNotifications

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command
{
    //    NSString* msg;
    //    msg = [NSString stringWithFormat: @"%s", "removeAllDelivered executed"];
    //    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center removeAllDeliveredNotifications];
    
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
