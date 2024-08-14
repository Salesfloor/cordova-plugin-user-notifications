#import <Cordova/CDV.h>

@interface CPUserNotifications : CDVPlugin

- (void)removeAllDelivered:(CDVInvokedUrlCommand*)command;

@end