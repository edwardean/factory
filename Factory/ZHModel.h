//
//  ZHModel.h
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHObject.h"

@protocol ZHModel <NSObject>

@end

@interface ZHModel : NSObject <ZHModel>

/*
 数据单元
 */
@property (nonatomic) ZHObject *object;

/*
 	数据单元集合
 */
@property (nonatomic) NSArray *objects;

//+ (void)bindObjectsToController:(NSArray *)objects;
- (void)bindModel:(id<ZHModel>)model;

@end
