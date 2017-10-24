//
//  TransitionNavViewController.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/24.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "TransitionNavViewController.h"
#import "CustomerAnimator.h"
@interface TransitionNavViewController ()

@end

@implementation TransitionNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.modalPresentationStyle = UIModalPresentationCustom;
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC{
    return [CustomerAnimator new];
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
