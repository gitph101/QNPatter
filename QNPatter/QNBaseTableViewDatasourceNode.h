//
//  QNBaseTableViewDatasourceNode.h
//  GiftTalk
//
//  Created by Xiaoxuan Tang on 15/8/2.
//  Copyright (c) 2015年 TieTie Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// Cell 三种用途，展示内容，绑定数据，响应点击
@interface QNBaseTableViewDatasourceNode : NSObject

typedef void (^QNBaseTableViewDatasourceNodeResponseClickBlockType)(NSIndexPath*, QNBaseTableViewDatasourceNode* node);
typedef void (^QNBaseTableViewDatasourceNodeConfigureCellBlockType)(NSIndexPath*, UITableViewCell*);
typedef void (^QNBaseTableViewDatasourceNodeHandleCellSignalBlockType)(NSIndexPath*, id x);

@property (nonatomic, strong) Class cellClass;
@property (nonatomic, strong) id renderModel;

@property (nonatomic, copy) QNBaseTableViewDatasourceNodeConfigureCellBlockType configureCellBlock;

@property (nonatomic, strong) id bindObject;
@property (nonatomic, copy)   NSString* bindKeyPath;

@property (nonatomic, copy) QNBaseTableViewDatasourceNodeHandleCellSignalBlockType handleCellBlock;

@property (nonatomic, copy) QNBaseTableViewDatasourceNodeResponseClickBlockType responseClickblock;

@property (nonatomic, strong) id  responseObject;
@property (nonatomic, assign) SEL responseSelector;

@property (nonatomic, strong) id userInfo;

@property (nonatomic, assign) CGFloat cellHeight;

@end
