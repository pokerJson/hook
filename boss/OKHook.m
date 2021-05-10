//
//  OKHook.m
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import "OKHook.h"
#import <objc/runtime.h>

@implementation OKHook

+ (void)hookClass:(Class)object fromSelector:(SEL)fromSel toSelector:(SEL)toSel{
    Class class = object;
    Method fromMethod = class_getInstanceMethod(class, fromSel);
    Method toMethod = class_getInstanceMethod(class, toSel);
    if (class_addMethod(class, fromSel, method_getImplementation(toMethod), method_getTypeEncoding(toMethod))) {
        class_replaceMethod(class, toSel, method_getImplementation(fromMethod), method_getTypeEncoding(fromMethod));
    }else{
        method_exchangeImplementations(fromMethod, toMethod);
    }
}

@end
