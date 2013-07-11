//
//  ZHMessageFactory.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHMessageFactory.h"
#import "ZHMessage.h"

@implementation ZHMessageFactory

+ (ZHObject *)Factory:(id<ZHObject>)object
{
	return (ZHMessage *)object;
}

@end
