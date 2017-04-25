//
//  QNBaseTableViewController.h
//  QNPatter
//
//  Created by 研究院01 on 17/4/25.
//  Copyright © 2017年 YanJiuYuan. All rights reserved.
//

#import "QNBaseViewController.h"
#import "QNBaseTableViewDatasource.h"

@interface QNBaseTableViewController : QNBaseViewController<UITableViewDelegate>

@property (nonatomic, weak) UITableView* tableView;

- (QNBaseTableViewDatasource *) datasource;

@end
