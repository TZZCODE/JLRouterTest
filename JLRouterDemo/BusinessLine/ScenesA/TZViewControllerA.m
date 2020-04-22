//
//  TZViewControllerA.m
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import "TZViewControllerA.h"
#import "JLRoutes.h"
#import "Header.h"

@interface TZViewControllerA ()

@end

@implementation TZViewControllerA


+ (void)load
{
    [JLRoutes addRoute:TZ_SCENESA handler:^id(NSDictionary *parameters) {
        TZViewControllerA *vc = [[TZViewControllerA alloc] init];
        return vc;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}



@end
