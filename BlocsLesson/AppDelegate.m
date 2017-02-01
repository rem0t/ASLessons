//
//  AppDelegate.m
//  BlocsLesson
//
//  Created by Vladislav Kalaev on 24.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end


typedef void (^OurTestBlock) (void);

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    // блоки первый войд ничего не передает второй ничего не возвращает по середине название блока
    void (^testBlock) (void); // тут мы его определили
    
    testBlock = ^ { // здесь инициализировали
        NSLog(@"test block");
    };
    
    testBlock(); // здесь вызвали
    
    void (^testBlockWithParams) (NSString*,NSInteger) = ^ (NSString* string,NSInteger intValue) { // здесь мы говорим что передаем строку и число
        NSLog(@"testBlockWithParams %@ %d",string,intValue);
    };
    
    testBlockWithParams(@"Test block",11); // а тут вызываем блок с параметрами
    
     
  //  NSString* result = [self testMethidWithReturnValueParams:@"test string" value:111]; // метод в отличии от блока
    
    //NSLog(@"%@",result); // вывели отформатированную строку
    
    
    NSString* (^blockReturnValueAndParams) (NSString*,NSInteger) = ^ (NSString* string,NSInteger intValue) { // возвращает указатель на объект класса стринг принимает строку и число
        return [NSString stringWithFormat:@"testMethidWithReturnValueParams %@ %d",string,intValue]; 
    };
    
    NSString* result =  blockReturnValueAndParams(@"test string",111);
    
    NSLog(@"%@",result);
    
    __block NSString* testString = @"HOW1 ??";
    __block NSInteger i = 0;
    
    void (^testBlock2) (void);
    
    testBlock2 = ^{
        NSLog(@"test block");
        i = i + 1;
        testString = [NSString stringWithFormat:@"HOW2 ?? %d", i]; // изменили строку
        NSLog(@"%@",testString);
    };
    
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
                            // блоки держат стронг ссылки 
    
    [self testBlockMethod:^{
        NSLog(@"BLOCK!!!");
    }];
    
    OurTestBlock testBlock2 = ^{
        NSLog(@"BLOCK2!!!");
    };
    
    [self testBlockMethod:testBlock2];
    
    return YES;
}

- (void) testMethid {
    NSLog(@"test method");
}


- (NSString*) testMethidWithReturnValueParams: (NSString*) string value:(NSInteger) intValue{
    return [NSString stringWithFormat:@"testMethidWithReturnValueParams %@ %d",string,intValue];
    
}

-(void) testBlockMethod: (void(^)(void)) testBlock { // метод с блоком
    NSLog(@"testBlockMethod");
    testBlock();
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
