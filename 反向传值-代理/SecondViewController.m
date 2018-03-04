//
//  SecondViewController.m
//  反向传值-代理
//
//  Created by Albert-z on 04/03/2018.
//  Copyright © 2018 Albert-z. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong)NSMutableString *textContent;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    
    if([self.delegate respondsToSelector:@selector(secondViewConrollerGetContentFromText:)]){
        
        [self.delegate secondViewConrollerGetContentFromText:self.textContent];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.textContent = [textField.text stringByReplacingCharactersInRange:range withString:string];

    return YES;
}


@end
