//
//  NextViewController.m
//  简单的代理与block实现方式
//
//  Created by cheng on 16/4/29.
//  Copyright © 2016年 cheng. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)delegateWaybackView:(id)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeTextValue:)])
    {
        [self.delegate changeTextValue:@"第一种方式"];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)blockWaybackView:(id)sender{
    if (self.NextViewControllerBlock) {
        self.NextViewControllerBlock(@"第二种方式");
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
