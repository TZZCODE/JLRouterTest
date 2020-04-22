//
//  TZRouter.m
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import "TZRouter.h"
#import "JLRoutes.h"
#import "UIViewController+TZCurrentVC.h"

@implementation TZRouter

+ (TZRouter *)sharedInstance {
    static TZRouter *routesObj = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        routesObj = [[TZRouter alloc] init];
    });
    return routesObj;
}

- (id)routeURL:(NSString *)urlString parmas:(NSDictionary *)params
{
    return [JLRoutes routeURL:[NSURL URLWithString:urlString] withParameters:params];
}


- (void)openURL:(NSString *)url params:(NSDictionary *)parmas
{
    if (!url) {
        return;
    }
    UIViewController *taegetVC = [self routeURL:url parmas:parmas];
    if (taegetVC) {
        UIViewController *currentVC = [UIViewController getCurrentVC];
        [currentVC.navigationController pushViewController:taegetVC animated:YES];
    }
}


@end
