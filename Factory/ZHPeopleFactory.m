//
//  ZHPeopleFactory.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHPeopleFactory.h"
#import "ZHPeople.h"

@implementation ZHPeopleFactory

+ (ZHObject *)Factory:(id<ZHObject>)object
{
	return (ZHPeople *)object;
}
@end
