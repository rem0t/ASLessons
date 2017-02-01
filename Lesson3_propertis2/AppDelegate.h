//
//  AppDelegate.h
//  Lesson3_propertis2
//
//  Created by Vladislav Kalaev on 15.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ASObject;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ASObject* object;

// по умолчанию property object созадется atomic
// atomic - потоко независимо можем созадавать больше чем один поток (потокозащищенная переменная), но работает медленнее                                       ВСЕ ЭТО СВОЙСТВА ПРОПЕРТИ
// по умолчанию + стоит readwrite 3 переменной
// readonly путь к сеттерам закрыт

// strong означат что объект будет существовать пока есть хотябы одна такая ссылка 
// weak не влиет на время жизни объека. если объект уничтожен то weak = nill
// assine как weak только убдет не nill, а указатель на мусор
// copy 

@end

