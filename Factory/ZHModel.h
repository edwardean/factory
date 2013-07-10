//
//  ZHModel.h
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHObject.h"

@interface ZHModel : NSObject

@property (nonatomic) ZHObject *object;
@property (nonatomic) NSArray *objects;

- (void)bindDataToController:(id<ZHObject>)object;

@end
