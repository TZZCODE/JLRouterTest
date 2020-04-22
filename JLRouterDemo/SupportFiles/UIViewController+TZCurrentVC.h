//
//  UIViewController+TZCurrentVC.h
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (TZCurrentVC)

+ (UIViewController *)getCurrentVC;
+ (UIViewController *)topViewController:(UIViewController *)vc;

@end

NS_ASSUME_NONNULL_END
