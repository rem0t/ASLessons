//
//  AppDelegate.m
//  Mnogopotochnost
//
//  Created by Vladislav Kalaev on 26.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
    // Потоки нужны чтобы передавать многонагруженные методы или функции в другой поток чтобы он не напрягал весь поток
    [self performSelectorInBackground:@selector(testThread) withObject:nil];
    // это простой способ использования потока. Воспроизводим наш селектор метод в бэкграунде
    */ // Чем больше потоков тем медленнее они работают. 2-3 потока самое то
    
    for (int i = 0; i<5; i++) {
        NSThread* thread = [[NSThread alloc]initWithTarget:self selector:@selector(testThread) object:nil];
        thread.name = [NSString stringWithFormat:@"Thread #%d", i+1];
        [thread start];
    }
    
    
    NSThread* thread = [[NSThread alloc]initWithTarget:self selector:@selector(testThread) object:nil];
    [thread start];
    
    
        return YES;
}

- (void) testThread {
    
    @autoreleasepool {
        
        double startTime = CACurrentMediaTime();
         
        NSLog(@"%@ started",[[NSThread currentThread]name]);
        
        for (int i = 0; i<20000000; ++i ) {
        
        }
        NSLog(@"%@ finished in %f",[[NSThread currentThread]name],CACurrentMediaTime() - startTime);
    }
    
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
