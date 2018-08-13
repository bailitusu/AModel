//
//  AViewController.m
//  MainProject
//
//  Created by cozhang  on 2018/8/13.
//  Copyright © 2018年 cozhang . All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [[button.widthAnchor constraintEqualToConstant:140] setActive:YES];
    [[button.heightAnchor constraintEqualToConstant:48] setActive:YES];
    [[button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor] setActive:YES];
    [[button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor] setActive:YES];
    [button setTitle:@"BBB" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonAction {
    BViewController *vc = [[BViewController alloc] init];
    [self showViewController:vc sender:nil];
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
