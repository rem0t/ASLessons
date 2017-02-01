//
//  ASStudent.m
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASStudent.h"

@implementation ASStudent


-(void) study {
    
}

// ниже описанно как можно лехче ориентироваться в коде. УДОБНО
#pragma mark - ASPasient
 
-(BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2; // генерируем рандомное число и делем на 2 чтобы проверить его четность если делится значит четное
    NSLog(@"Is student %@ ok? %@", self.name,ok?@"YES":@"NO"); // ? это наш if только укороченный. КРУТО !!
    return ok;
}
-(void) tekePill {
    NSLog(@"Student %@ takes a pill", self.name);
    
}
-(void) makeShot {
    NSLog(@"Student %@ make a shot", self.name);
    
}

-(NSString*) howIsYourFamly {
 return @"I love my famaly";
}

@end
