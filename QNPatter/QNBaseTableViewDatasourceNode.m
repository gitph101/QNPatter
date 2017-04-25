//
//  TTStaticTableViewDataSourceNode.m
//  GiftTalk
//
//  Created by Xiaoxuan Tang on 15/8/2.
//  Copyright (c) 2015年 TieTie Inc. All rights reserved.
//

#import "QNBaseTableViewDatasourceNode.h"

@implementation QNBaseTableViewDatasourceNode

- (instancetype) init
{
    if (self = [super init])
    {
        self.cellHeight = -1;
    }
    
    return self;
}

@end
