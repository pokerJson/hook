//
//  OKLogger.m
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import "OKLogger.h"

@implementation OKLogger

+ (__kindof OKLogger *)instance{
    static OKLogger *tools = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        tools = [[OKLogger alloc] init];
    });
    
    return tools;
}

- (void)message:(NSString *)source{
    NSLog(@"xxxxx==%@",source);
    //这里做上报.....
}

@end
