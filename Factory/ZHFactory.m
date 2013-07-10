//
//  ZHFactory.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHFactory.h"
#import "ZHPeople.h"
#import "ZHMessage.h"

@implementation ZHFactory
@synthesize people = people_;
@synthesize message = message_;

- (ZHObject *)factory:(id<ZHObject>)object
{
	if ([object isKindOfClass:[ZHPeople class]]) {
    return (ZHPeople *)object;
  } else if ([object isKindOfClass:[ZHMessage class]]) {
  	return (ZHMessage *)object;
  } else {
  	return nil;
  }  
}

@end
