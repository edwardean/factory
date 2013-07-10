//
//  ZHObject.h
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZHObject <NSObject>

@end

@class ZHPeople;
@class ZHMessage;

@interface ZHObject : NSObject <ZHObject>

@property (nonatomic) ZHPeople *people;
@property (nonatomic) ZHMessage *message;

- (void)bindWithObject:(id<ZHObject>)object;

@end
