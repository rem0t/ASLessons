//
//  ASParentKlass.h
//  AS
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASParentKlass : NSObject


+(void) whoAreYou;
-(void) sayHello;
-(void) say:(NSString*) string;
-(void) say:(NSString*) string and:(NSString*) string2;
-(void) say:(NSString*) string and:(NSString*) string2 andAfterWhat:(NSInteger) say; // методы!!!
-(NSString*) saySomething;

@end
