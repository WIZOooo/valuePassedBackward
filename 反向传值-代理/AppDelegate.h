//
//  AppDelegate.h
//  反向传值-代理
//
//  Created by Albert-z on 04/03/2018.
//  Copyright © 2018 Albert-z. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

