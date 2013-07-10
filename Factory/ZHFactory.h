//
//  ZHFactory.h
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHObject.h"

@class ZHPeople;
@class ZHMessage;

@interface ZHFactory : NSObject

@property (nonatomic) ZHPeople *people;
@property (nonatomic) ZHMessage *message;

+ (ZHObject *)Factory:(id<ZHObject>)object;

@end
