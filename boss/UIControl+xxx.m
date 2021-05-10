//
//  UIControl+xxx.m
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import "UIControl+xxx.h"
#import "OKLogger.h"
#import "OKHook.h"

@implementation UIControl (xxx)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // 通过 @selector 获得被替换和替换方法的 SEL，作为 OKHook:hookClass:fromeSelector:toSelector 的参数传入
        SEL fromSelector = @selector(sendAction:to:forEvent:);
        SEL toSelector = @selector(hook_sendAction:to:forEvent:);
        [OKHook hookClass:self fromSelector:fromSelector toSelector:toSelector];
        
    });
    
}
- (void)hook_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    [self insertToSendAction:action to:target forEvent:event];
    [self hook_sendAction:action to:target forEvent:event];
    
}
- (void)insertToSendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    // 日志记录
    if ([[[event allTouches] anyObject] phase] == UITouchPhaseEnded) {
        NSString *actionString = NSStringFromSelector(action);
        NSString *targetName = NSStringFromClass([target class]);
        [[OKLogger instance] message:[NSString stringWithFormat:@"%@ %@",targetName,actionString]];
    }
}
@end
