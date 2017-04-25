//
//  QNBaseTableViewDatasource.h
//  QNPatter
//
//  Created by 研究院01 on 17/4/25.
//  Copyright © 2017年 YanJiuYuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <RACSignal.h>

@interface QNBaseTableViewDatasource : NSObject<UITableViewDelegate, UITableViewDataSource>

//继承用，尽量不要在外界调用
@property (nonatomic, strong) NSMutableArray* dataSources;
@property (nonatomic, weak)   UITableView*    tableView;


/**
 *  实时更新这个状态来切换emptyView的状态,显示隐藏的逻辑在observe里面
 */
@property (nonatomic, assign) int emptyStatus;
@property (nonatomic, strong) Class emptyViewClass;
// @property (nonatomic, readonly, weak) TTEmptyView* emptyView;
/**
 *  emptyView点击的事件，里面的值是status的状态
 */
@property (nonatomic, readonly) RACSubject* emptyViewClicked;



//- (void) addNode: (TTStaticTableViewDataSourceNode*) node;

//实际上是 添加一个 Section ~
- (void) addSeparator;

- (void) reloadData;

@end
