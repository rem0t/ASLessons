//
//  ASBoxer.m
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASDeveloper.h"

@implementation ASDeveloper

-(void) work {
    
}

// ниже описанно как можно лехче ориентироваться в коде. УДОБНО
#pragma mark - ASPasient

-(BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2; // генерируем рандомное число и делем на 2 чтобы проверить его четность если делится значит четное
    NSLog(@"Is developer %@ ok? %@", self.name,ok?@"YES":@"NO"); // ? это наш if только укороченный. КРУТО !!
    return ok;
}
-(void) tekePill {
    NSLog(@"Developer %@ takes a pill", self.name);
    
}
-(void) makeShot {
    NSLog(@"Developer %@ make a shot", self.name);

}

-(NSString*) howIsYourJob {
    return @"My job awesome!";
}

@end
