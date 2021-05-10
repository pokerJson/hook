//
//  OKHook.h
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OKHook : NSObject

+ (void)hookClass:(Class)object fromSelector:(SEL)fromSel toSelector:(SEL)toSel;

@end

NS_ASSUME_NONNULL_END
