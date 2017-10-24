//
//  OneViewController.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
#import "CustomerAnimator.h"
@interface OneViewController ()<UINavigationControllerDelegate>

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"OneViewController";
 
    self.imgvWanle.image = [UIImage imageNamed:@"biaoqian"];
    self.imgvWanle.userInteractionEnabled = YES;
    UITapGestureRecognizer *ges = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(moveToPageTwoController:)];
    [self.imgvWanle addGestureRecognizer:ges];
    
    
    
    
}

-(void)moveToPageTwoController:(id)gesture{
    
    NSLog(@"moveToPageTwoController");
     self.navigationController.delegate = self;
    TwoViewController *vc = [[TwoViewController alloc] init];
//    vc.modalPresentationStyle = UIModalPresentationCustom;
//    vc.transitioningDelegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
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

//- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
//
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
