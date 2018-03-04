//
//  ViewController.m
//  反向传值-代理
//
//  Created by Albert-z on 04/03/2018.
//  Copyright © 2018 Albert-z. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)showSecondVC:(id)sender {
    
    SecondViewController *secVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    secVC.delegate = self;
    
    [self showViewController:secVC sender:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) secondViewConrollerGetContentFromText:(NSString *)text{
    [self.label setText:text];
    [self.view layoutIfNeeded];
}

@end
