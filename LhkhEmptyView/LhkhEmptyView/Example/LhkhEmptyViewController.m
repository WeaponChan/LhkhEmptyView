//
//  LhkhEmptyViewController.m
//  LhkhEmptyView
//
//  Created by LHKH on 2018/2/27.
//  Copyright © 2018年 LHKH. All rights reserved.
//

#import "LhkhEmptyViewController.h"
#import "LhkhEmptyViewManager.h"

@interface LhkhEmptyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong, nonatomic)UITableView *tableView;
@end

@implementation LhkhEmptyViewController

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    
    
    
    //当有网络请求数据的时候 无数据直接调用
    [[LhkhEmptyViewManager sharedTipsManager] showTipsViewType:TipsType_HaveNoOrder toView:self.tableView];

    //有数据调用这个
    //[[LhkhEmptyViewManager sharedTipsManager] removeTipsViewFromView:self.tableView];
    
    //自定义调用这个
    //[[LhkhEmptyViewManager sharedTipsManager] showCustomTipsViewType:@{} toView:self.tableView];
}


#pragma mark - Layout SubViews




#pragma mark - System Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellID = @"tableviewCellID";
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = [NSString stringWithFormat:@"----%ld",indexPath.row];
    return cell;
}


#pragma mark - Custom Delegate




#pragma mark - Event Response




#pragma mark - Network requests




#pragma mark - Public Methods




#pragma mark - Private Methods




#pragma mark - Setters

- (UITableView*)tableView
{
    if(_tableView == nil){
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}


#pragma mark - Getters




@end
