//
//  QNBaseTableViewDatasourceNodeBuilder.h
//  GiftTalk
//
//  Created by Xiaoxuan Tang on 15/8/2.
//  Copyright (c) 2015年 TieTie Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QNBaseTableViewDatasourceNode.h"

#define STVBuilder() [QNBaseTableViewDatasourceNodeBuilder new]

#define cellC(__X__) cell([__X__ class])
#define responseB() responseBlock(^(NSIndexPath* indexPath, QNBaseTableViewDatasourceNode* node)
#define configureB() configureBlock(^(NSIndexPath* indexPath, UITableViewCell* cell)
#define handleB() handleBlock(^(NSIndexPath* indexPath, id x)

@interface QNBaseTableViewDatasourceNodeBuilder : NSObject

/**
 *  指定cell的class，dataSource会从这个class中生成一个cell对象
 */
- (QNBaseTableViewDatasourceNodeBuilder* (^)(Class)) cell;

//必须实现 TTDataSourceProtocol 哟～ yoooooooooo~~~
/**
 *  指定绘制时往里面塞的数据模型，在某个时间会调用cell的configureCellWithModel:的方法，参数为这里指定的数据对象
 */
- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) render;
/**
 *  指定绘制时的具体block，比如设置某个title的颜色、字体等。block的参数是indexPath和cell
 */
- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeConfigureCellBlockType)) configureBlock;


- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) bind;
- (QNBaseTableViewDatasourceNodeBuilder* (^)(NSString*)) keyPath;
- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeHandleCellSignalBlockType)) handleBlock;


- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeResponseClickBlockType)) responseBlock;

- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) response;
- (QNBaseTableViewDatasourceNodeBuilder* (^)(SEL)) selector;

- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) userInfo;
- (QNBaseTableViewDatasourceNodeBuilder* (^)(CGFloat)) height;

- (QNBaseTableViewDatasourceNode*) build;

@end
