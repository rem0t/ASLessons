//
//  ASDencer.m
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASDencer.h"


@implementation ASDencer

-(void) dance {
    
}

// ниже описанно как можно лехче ориентироваться в коде. УДОБНО
#pragma mark - ASPasient

-(BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2;  // генерируем рандомное число и делем на 2 чтобы проверить его четность если делится значит четное
    NSLog(@"Is dencer %@ ok? %@", self.name,ok?@"YES":@"NO"); // ? это наш if только укороченный. КРУТО !!
    return ok;
    
}
-(void) tekePill {
    NSLog(@"Dencer %@ takes a pill", self.name);
    
}
-(void) makeShot {
    NSLog(@"Dencer %@ make a shot", self.name);
    
}
@end
