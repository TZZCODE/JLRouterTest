//
//  TZViewControllerB.m
//  JLRouterDemo
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import "TZViewControllerB.h"
#import "JLRoutes.h"
#import "Header.h"

@interface TZViewControllerB ()

@property (nonatomic, strong) UILabel *textLabel;

@property (nonatomic,  copy) NSString *text;

@end

@implementation TZViewControllerB

+ (void)load
{
    [JLRoutes addRoute:TZ_SCENESB handler:^id(NSDictionary *parameters) {
        TZViewControllerB *vc = [[TZViewControllerB alloc] init];
        vc.text = parameters[@"title"];
        return vc;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textLabel];
    
    self.textLabel.text = self.text;
    
}

- (UILabel *)textLabel
{
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, kScreenWidth, 200)];
        _textLabel.numberOfLines = 0;
        _textLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _textLabel;
}



@end
