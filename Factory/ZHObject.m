//
//  ZHObject.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHObject.h"

@implementation ZHObject

- (void)bindWithObject:(id<ZHObject>)object
{
	[NSException raise:NSInternalInconsistencyException format:@"子类%@中必须实现%@方法",[NSString stringWithUTF8String:object_getClassName(self)],NSStringFromSelector(_cmd)];
}

@end
