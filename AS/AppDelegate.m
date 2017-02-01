//
//  AppDelegate.m
//  AS
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASParentKlass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ASParentKlass* paret=[[ASParentKlass alloc]init]; // paret объект класса 
    
    [paret sayHello]; // вызываем метод
    
    [paret say:(@"How are you")]; // передаем данные методу нашу строку 
    
    [paret say:(@"i'm fine") and:(@"thx")];
    
    [paret say:(@"And i'm fucking lauer ") and:(@"i'm find rupi") andAfterWhat:(320)];
    
    NSLog(@"%@", [paret saySomething]);  // передаем то что возвращает нам метод ничего не принимает а возвращает строку
    // получили строку от объекта класса
    
    [ASParentKlass whoAreYou ]; // мы вызвали этот метод у класса а раньше мы вызывали у объекта класса !!! дошло
    
    
    
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
