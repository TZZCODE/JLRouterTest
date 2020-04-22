//
//  TZRouter.h
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TZRouter : NSObject

+ (TZRouter * __nullable )sharedInstance;

- (void)openURL:(NSString *)url params:(nullable NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
