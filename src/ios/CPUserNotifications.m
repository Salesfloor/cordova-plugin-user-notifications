#import "CPUserNotifications.h"

@implementation CPUserNotifications

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command
{
    NSString* msg;
    msg = [[NSString stringWithFormat: @"%@", "removeAllDelivered executed"] retain];

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
