//
//  main.m
//  Demo
//
//  Created by Hsiao, Wayne on 2019/11/29.
//

#import <Foundation/Foundation.h>
#import "AppLaunchSequence-Swift.h"
#import "GlobalVariables.h"
#import <objc/runtime.h>
#import "UIApplication+private.h"

void DumpObjcMethods(Class class) {
    unsigned int methodCount = 0;
    Method *methods = class_copyMethodList(class, &methodCount);

    printf("Found %d methods on '%s'\n", methodCount, class_getName(class));
    
    for (unsigned int i = 0; i < methodCount; i++)
    {
        Method method = methods[i];

        printf("\t'%s' has method named '%s' of encoding '%s'\n",
               class_getName(class),
               sel_getName(method_getName(method)),
               method_getTypeEncoding(method));
    }

    free(methods);
}

@interface Loader: NSObject
@end

@implementation Loader

+ (void)load
{
    DumpObjcMethods(UIApplication.class);

    UIApplication *sharedApplication = [UIApplication sharedApplication];
    NSAssert(sharedApplication == nil, @"Application object should be nil.");
    NSAssert(sharedApplication.delegate == nil, @"Applicaiton delegate should be nil.");
    NSAssert(_runLoop == nil, @"_runLoop should be nil.");
    NSRunLoop *mainLoop = [NSRunLoop mainRunLoop];
    NSLog(@"%@", [mainLoop currentMode]);
    NSAssert(mainLoop != nil, @"mainLoop should not be nil.");
    _runLoop = mainLoop;
    NSAssert(_runLoop != nil, @"_runLoop should not be nil.");
}

@end

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    NSString * applicationClassName;
    @autoreleasepool {
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        applicationClassName = NSStringFromClass([MyApplication class]);
    }
    return UIApplicationMain(argc, argv, applicationClassName, appDelegateClassName);
}
