//
//  ZHMessage.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHMessage.h"

@implementation ZHMessage

@synthesize messageContent = messageContent_;

- (void)bindWithObject:(id<ZHObject>)object
{
	ZHMessage *mess = (ZHMessage *)object;
  self.messageContent = mess.messageContent;
  NSLog(@"MessageContent:%@",messageContent_);
}

@end
