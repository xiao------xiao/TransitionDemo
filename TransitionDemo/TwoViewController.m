//
//  TwoViewController.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"TwoViewController";
    self.navigationController.navigationBar.translucent =true;
    
    self.view.backgroundColor = [UIColor blueColor];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = item;
    
    self.imageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"biaoqian"]];
    self.imageview.frame = CGRectMake(10, 10, 300, 300);
    [self.view addSubview:self.imageview];
    
}

-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
