//
//  AppDelegate.m
//  Selectors
//
//  Created by Vladislav Kalaev on 23.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASObjct.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // селектор это указатель на метод он не привязывается ни к какому классу
    /*
    ASObjct* obj = [[ASObjct alloc] init];
    
    SEL selector1 = @selector(testMethod); // селектор
    SEL selector2 = @selector(testMethod:); // метод с параметром
    SEL selector3 = @selector(testMethod:parametr2:); // метод с двумя параметрами
    
    [self performSelector:selector1];
    [obj performSelector:selector1];
    
  //  [self performSelector:selector2 withObject:@"test string"];
  //  [self performSelector:selector3 withObject:@"string1" withObject:@"string2"];
    
    [self performSelector:selector1 withObject:nil afterDelay:5.f]; // вызвали метод с задержкой в 5 сек
    */
    
    
  //  NSString* string = [self testMethodParametr1:2 parametr2:3.1f parametr3:5.5f];
    
   // NSLog(@"string = %@",string );
    
    SEL selector = @selector(testMethodParametr1:parametr2:parametr3:);
    
    NSMethodSignature* signature = [AppDelegate instanceMethodForSelector:selector];
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    [invocation setTarget:self]; // target означате тот объект у которого будет вызван метод
    [invocation setSelector:selector];
    
    NSInteger fVal = 2;
    CGFloat cfVal = 3.1f;
    double dval = 5.5f;
    
    NSInteger * p1 =&fVal;
    CGFloat * p2 =&cfVal;
    double * p3 =&dval;
    
    [invocation setArgument:p1 atIndex:2];
    [invocation setArgument:p2 atIndex:3];
    [invocation setArgument:p3 atIndex:4];
   
    [invocation invoke];
    
    return YES;
}


- (void) testMethod {
    NSLog(@"Test Method");
}

- (void) testMethod:(NSString*) string {
    NSLog(@"testMethod: %@", string);
    
}

- (NSString*) testMethodParametr1:(NSInteger) intValue parametr2:(CGFloat) floatValue parametr3:(double) doubleValue{
    
    return [NSString stringWithFormat:@"testMethod:parametr2 %d, parametr2: %f parametr3: %f",intValue,floatValue,doubleValue];
  
    
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
