//
//  ASBoxer.m
//  Lesson2Propertis
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASBoxer.h"

@interface ASBoxer () // категория по умолчинию которая рассширяет класс

@property (assign, nonatomic) NSInteger nameCount; // ИНКАПСЮЛАЦИЯ мы скрыли нас счетчик

@end


@implementation ASBoxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0; // инициализировали и обнулили счетчик
    } 
    return self;
}

-(void) setName:(NSString *)name {
    NSLog(@"setter setName: is called");
    _name = name; // INVar внутренняя переменная
}


-(NSString*) name {
    self.nameCount++;
    NSLog(@"name getter is called %d times", self.nameCount);
    return _name;
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    return _age;
}

- (NSInteger) howOldAreYou {
    return self.age;
}


@end
