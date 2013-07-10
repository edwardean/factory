//
//  ZHPeople.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHPeople.h"

@implementation ZHPeople
@synthesize name = name_;

- (void)bindWithObject:(id<ZHObject>)object
{
	ZHPeople *people = (ZHPeople *)object;
  self.name = people.name;
  NSLog(@"UserName:%@",name_);
}

@end
