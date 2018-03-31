#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "YYYWebfilesManager.h"

@implementation NSObject (M163PWD)

#pragma mark - Constructor

__attribute__((constructor)) static void printPassword(void) {
    Class class = objc_getClass("YYYWebfilesManager");
    id instance = (YYYWebfilesManager*) [class sharedInstance];
    id pwd = [instance webFilesPassword];
    NSLog(@"===> %@", pwd);
}

@end