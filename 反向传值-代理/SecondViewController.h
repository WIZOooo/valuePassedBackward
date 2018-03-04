//
//  SecondViewController.h
//  反向传值-代理
//
//  Created by Albert-z on 04/03/2018.
//  Copyright © 2018 Albert-z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController ///<>
@property(nonatomic, weak) id delegate;
@end

@protocol SecondViewControllerDelegate <NSObject>
@optional
- (void)secondViewConrollerGetContentFromText:(NSString *)text;

@end
