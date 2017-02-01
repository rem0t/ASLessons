//
//  AppDelegate.m
//  NSDictionaryLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
 
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // что же токое директрориии. это тот же массив только с кючами идет ключ - значение
    // используем его мы когда работаем с данными например поиск по книге где ключ назнавние абзатца или темы
    // обеспечивает быстрый доступ к данным
    // чувствителел к регистру как мы ключ описали так он и должен вызываться ну бля так и есть
    // ключи у нас LastName и name
  /*  NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"Petrov",@"LastName", // значение - ключ
                                @"Vasiliy",@"name",
                                [NSNumber numberWithInt:25],@"age",
                                nil];
   */
    NSDictionary* dictionary3 = @{@"LastName":@"Petrov",  // ключ - значение .. это тоже самое что и выше
                                  @"name":@"Vasiliy",
                                  @"age":@25};
   
    NSLog(@"%@",dictionary3);
    
    NSLog(@"name= %@, lastName = %@, age = %d",
          [dictionary3 objectForKey:@"name"],
          [dictionary3 objectForKey:@"LastName"],
          [[dictionary3 objectForKey:@"age"] integerValue]);
    
    
    return YES;
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
