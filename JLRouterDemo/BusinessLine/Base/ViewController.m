//
//  ViewController.m
//  JLRouter
//
//  Created by tz on 2020/4/22.
//  Copyright © 2020 Coder. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "TZRouter.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    
}


#pragma mark - UITableViewDataSource/UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [self.dataSource objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        [[TZRouter sharedInstance] openURL:TZ_SCENESA params:nil];
    }else if (indexPath.row == 1)
    {
        NSDictionary *dic = @{@"title" : @"我是有参数的"};
        [[TZRouter sharedInstance] openURL:TZ_SCENESB params:dic];
    }else{
        //....
    }
}



#pragma mark - lazyTable
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, kTopHeight, kScreenWidth, kScreenHeight-kTopHeight) style:UITableViewStylePlain];
        _tableView.showsHorizontalScrollIndicator   = NO;
        _tableView.showsVerticalScrollIndicator     = NO;
        _tableView.estimatedRowHeight               = 0;
        _tableView.estimatedSectionFooterHeight     = 0;
        _tableView.estimatedSectionHeaderHeight     = 0;
        _tableView.delegate  = self;
        _tableView.dataSource= self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
        if (@available(iOS 11.0, *)){
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return _tableView;
}


- (NSArray *)dataSource
{
    return @[@"无参跳转",@"有参跳转"];
}

@end

