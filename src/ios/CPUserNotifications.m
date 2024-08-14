#import "CPUserNotifications.h"

@implementation CPUserNotifications

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command
{
    NSString* callbackId = [command callbackId];
    // NSString* msg = [NSString stringWithFormat: @"removeAllDelivered executed: %@", [[command arguments] objectAtIndex:0]];
    NSString* msg = "removeAllDelivered executed";

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
