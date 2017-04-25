//
//  QNBaseTableViewDatasourceNodeBuilder.m
//  GiftTalk
//
//  Created by Xiaoxuan Tang on 15/8/2.
//  Copyright (c) 2015年 TieTie Inc. All rights reserved.
//

#import "QNBaseTableViewDatasourceNodeBuilder.h"
#import "QNBaseTableViewDatasourceNode.h"

#define weakify(...) \
rac_keywordify \
metamacro_foreach_cxt(rac_weakify_,, __weak, __VA_ARGS__)


#define strongify(...) \
rac_keywordify \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
metamacro_foreach(rac_strongify_,, __VA_ARGS__) \




@interface QNBaseTableViewDatasourceNodeBuilder ()

@property (nonatomic, strong) QNBaseTableViewDatasourceNode* node;

@end 

@implementation QNBaseTableViewDatasourceNodeBuilder

- (QNBaseTableViewDatasourceNode* ) build
{
    return self.node;
}
/*

- (QNBaseTableViewDatasourceNodeBuilder* (^)(Class)) cell
{
    @weakify(self);
    return ^id(Class class) {
        @strongify(self);
        self.node.cellClass = class;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) render{
    NSParameterAssert([self.node.cellClass conformsToProtocol:@protocol(TTDataSourceProtocol)]);
    
    @weakify(self);
    return ^id(id m) {
        @strongify(self);
        self.node.renderModel = m;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeConfigureCellBlockType)) configureBlock
{
    @weakify(self);
    return ^id(QNBaseTableViewDatasourceNodeConfigureCellBlockType configureBlock) {
        @strongify(self);
        self.node.configureCellBlock = configureBlock;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) bind
{
    @weakify(self);
    return ^id(id m) {
        @strongify(self);
        self.node.bindObject = m;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(NSString*)) keyPath
{
    NSParameterAssert(self.node.bindObject);
    
    @weakify(self);
    return ^id(id k) {
        @strongify(self);
        self.node.bindKeyPath = k;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeHandleCellSignalBlockType)) handleBlock;
{
    @weakify(self);
    return ^id (QNBaseTableViewDatasourceNodeHandleCellSignalBlockType block) {
        @strongify(self);
        self.node.handleCellBlock = block;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(QNBaseTableViewDatasourceNodeResponseClickBlockType)) responseBlock
{
    @weakify(self);
    return ^id (QNBaseTableViewDatasourceNodeResponseClickBlockType block) {
        @strongify(self);
        self.node.responseClickblock = block;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) response
{
    @weakify(self);
    return ^id (id r) {
        @strongify(self);
        self.node.responseObject = r;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(SEL)) selector
{
    NSParameterAssert(self.node.responseObject);
    @weakify(self);
    return ^id(SEL s) {
        @strongify(self);
        self.node.responseSelector = s;
        return self;
    };
}
 
- (QNBaseTableViewDatasourceNodeBuilder* (^)(id)) userInfo
{
    @weakify(self);
    return ^id(id userInfo) {
        @strongify(self);
        self.node.userInfo = userInfo;
        return self;
    };
}

- (QNBaseTableViewDatasourceNodeBuilder* (^)(CGFloat)) height
{
    @weakify(self);
    return ^id(CGFloat h) {
        @strongify(self);
        self.node.cellHeight = h;
        return self;
    };
}
- (instancetype) init
{
    if (self = [super init])
    {
        self.node = [QNBaseTableViewDatasourceNode new];
    }
    
    return self;
}

*/

@end
