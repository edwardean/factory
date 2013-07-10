//
//  ZHViewController.m
//  Factory
//
//  Created by Edward on 13-7-10.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHFactory.h"
#import "ZHModel.h"
#import "ZHObject.h"
#import "ZHPeople.h"
#import "ZHMessage.h"

@interface ZHViewController ()

@end

@implementation ZHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  
  ZHPeople *people = [[ZHPeople alloc] init];
  people.name = @"Edward";
  
  ZHMessage *message = [[ZHMessage alloc] init];
  message.messageContent = @"The isa instance variable of the new instance is initialized to a data structure that describes the class; memory for all other instance variables is set to 0.";
  
  ZHFactory *factory = [[ZHFactory alloc] init];
  ZHObject *object = [factory factory:message];
  [object bindWithObject:object];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
