//
//  OKLogger.h
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OKLogger : NSObject

+ (__kindof OKLogger *)instance;

- (void)message:(NSString *)source;

@end

NS_ASSUME_NONNULL_END
