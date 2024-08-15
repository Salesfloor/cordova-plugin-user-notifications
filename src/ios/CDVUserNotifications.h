#import <Cordova/CDV.h>

@interface CDVUserNotifications : CDVPlugin

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command;

@end