7/10
===
>  Factory Method
运行时动态决定子类的对象

`ZHObject:`

```
Des: 单元数据集合
SubClassing: NSObject
Property: ZHPeople *people
		  ZHMessage *message;
Methods:  -(void)bindWithObject:(id<ZHObject>)object;
*IMPORTANT*: 该方法必须由子类重写实现，完成子类数据处理
```

`ZHPeople:`

```
Des: 单元数据(人)
SubClassing: ZHObject
Property:	NSString* name;
```

`ZHMessage:`

```
Des: 单元数据(消息)
SubClassing: ZHObject
Property: NSString *messageContent
```

`ZHFactory`

```
Des: Factory method, create ZHPeople or ZHMessage instance
SubClassing: NSObject
Property: ZHPeople *people;
		  ZHMessage *message;
Methods: + (ZHObject *)Factory:(id<ZHObject>)object;
```

`ZHModel`

```
Des: Not use yet...

```

`ZHViewController`

```
Des: 测试

  ZHPeople *people = [[ZHPeople alloc] init];
  people.name = @"Edward";
  
  ZHMessage *message = [[ZHMessage alloc] init];
  message.messageContent = @"The isa instance variable of the new instance is 
  		initialized to a data structure that describes the class; memory for all 
  		other instance variables is set to 0.";
  
  ZHObject *object = [ZHFactory Factory:message]; Or [ZHFactory Factory:people];
  [object bindWithObject:object];
```