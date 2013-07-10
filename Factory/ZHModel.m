//
//  ZHModel.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHModel.h"
#import "ZHFactory.h"

@interface ZHModel ()

- (void)bindDataUnit:(id<ZHObject>)dataUnit;

@end

@implementation ZHModel

@synthesize objects = objects_;
@synthesize object = object_;

- (void)bindModel:(id<ZHModel>)model
{
  ZHModel *localModel = (ZHModel *)model;

	if (localModel.objects) {
    for (NSInteger i = 0; i < [localModel.objects count]; i++) {
      ZHObject *localObject = (ZHObject *)[localModel.objects objectAtIndex:i];
      [self bindDataUnit:localObject];
    }
  }
  if (localModel.object) {
    ZHObject *localObject = (ZHObject *)localModel.object;
    [self bindDataUnit:localObject];
  }
}

- (void)bindDataUnit:(id<ZHObject>)dataUnit
{
	ZHObject *data = [ZHFactory Factory:dataUnit];
  [data bindWithObject:data];
}

@end
