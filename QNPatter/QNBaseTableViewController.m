//
//  QNBaseTableViewController.m
//  QNPatter
//
//  Created by 研究院01 on 17/4/25.
//  Copyright © 2017年 YanJiuYuan. All rights reserved.
//

#import "QNBaseTableViewController.h"
#import <Masonry.h>

@interface QNBaseTableViewController ()

@property (nonatomic, strong) QNBaseTableViewDatasource* datasource;
@property (nonatomic, assign) CGFloat scrollViewOriginOffset;

@end

@implementation QNBaseTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    self.datasource = [self dataSourceMaker];
    
    UITableView* tableview = [[UITableView alloc] initWithFrame:CGRectZero
                                                                          style:UITableViewStyleGrouped];
    tableview.showsVerticalScrollIndicator = NO;
    tableview.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:tableview];
    self.tableView = tableview;
    tableview.delegate = self;
    tableview.dataSource = self.datasource;
    
    self.datasource.tableView = tableview;
    
    self.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    
    [tableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    self.tableView.sectionFooterHeight = 0;
    self.tableView.sectionHeaderHeight = 10;
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 0.01)];
    self.tableView.tableHeaderView = headerView;
    
    tableview.backgroundView = [UIView new];
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
}

- (instancetype) init
{
    if (self = [super init])
    {
        self.hidesBottomBarWhenPushed = YES;
    }
    return self;
}

- (QNBaseTableViewDatasource*) dataSourceMaker
{
    return [QNBaseTableViewDatasource new];
}


#pragma mark - UITableView Delegate

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView endEditing:YES];
    [self.datasource tableView:tableView didSelectRowAtIndexPath:indexPath];
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.datasource tableView:tableView heightForRowAtIndexPath:indexPath];
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self.datasource tableView:tableView viewForHeaderInSection:section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [self.datasource tableView:tableView heightForHeaderInSection:section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return [self.datasource tableView:tableView heightForFooterInSection:section];
}

- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [self.datasource tableView:tableView viewForFooterInSection:section];
}


- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    self.scrollViewOriginOffset = scrollView.contentOffset.y;
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.isDragging && fabs(self.scrollViewOriginOffset - scrollView.contentOffset.y) > 40)
    {
        [scrollView endEditing:YES];
    }
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
