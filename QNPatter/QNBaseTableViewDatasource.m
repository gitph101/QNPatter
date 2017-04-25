//
//  QNBaseTableViewDatasource.m
//  QNPatter
//
//  Created by 研究院01 on 17/4/25.
//  Copyright © 2017年 YanJiuYuan. All rights reserved.
//

#import "QNBaseTableViewDatasource.h"

@implementation QNBaseTableViewDatasource


#pragma mark - UITableView Delegate


#pragma mark - UITableView Delegate

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableView == self.tableView)
    {
        return self.dataSources.count;
    }
    
    return 0;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.tableView && section < self.dataSources.count)
    {
        return [self.dataSources[section] count];
    }
    
    return 0;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [UITableViewCell new];
}

#pragma mark - UITableview Delegate

@end
