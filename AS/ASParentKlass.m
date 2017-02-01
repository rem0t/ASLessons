//
//  ASParentKlass.m
//  AS
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASParentKlass.h"

@implementation ASParentKlass


+(void) whoAreYou {                     // этот метод должен быть вызвал у класса родителя ASParentKlass 
    NSLog(@"I'm as ASParentKlass");
}


-(void) sayHello {              // - самый простой метод void то что мы возвращаем void т.е. ничего не возвращаем и не принимаем
    NSLog(@"Parents say hello");
    
}

-(void) say:(NSString*) string { // передали нашему методу строку   ..возвращаемый парамет один void
    NSLog(@"%@", string); // которая потом вызывается тут .. а передовать мы можем несколько параметров
}

-(void) say:(NSString*) string and:(NSString*) string2 { // тут мы передаем 2 строки
    NSLog(@"%@,%@", string,string2);
}

-(void) say:(NSString*) string and:(NSString*) string2 andAfterWhat:(NSInteger) say { // а можем и 3,4,5 и до бесконечности
    NSLog(@"%@,%@,%li", string,string2,(long)say); // так я передал 3 параметра 2 строки и 1 числовой интежер
}

//-(NSString*) saySomething { // тут мы возвращаем строку
    
//    return @"Something";
//}

- (NSString*) saySomeNumberString { // возвращаем дату скрытый метод т.е. не объявленный в .h
 
    return [NSString stringWithFormat:@"%@", [NSDate date]];
    
}

-(NSString*) saySomething { // возвращаем строку котоая нам указыват что ее нужно брать у saySomeNumberString
    
    NSString* string = [self saySomeNumberString];
    return string;
}

@end
