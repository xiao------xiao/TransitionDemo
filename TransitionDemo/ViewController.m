//
//  ViewController.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "RandomCalculator.h"
#import "PresentationController.h"
#import "PresentVC.h"
#import "OneViewController.h"
#import "TransitionNavViewController.h"
@interface ViewController ()<CustomViewDelegate,UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CustomView *cView = [[CustomView alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
    cView.delegate = self;
    [self.view addSubview:cView];
    
    
}

- (IBAction)showPresentVC:(id)sender {
    PresentVC *vc = [[PresentVC alloc]init];
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
    
}


- (IBAction)showOneViewcontroller:(id)sender {
    OneViewController *VC = [[OneViewController alloc] init];
//    TransitionNavViewController *nav = [[TransitionNavViewController alloc] initWithRootViewController:VC];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:VC];
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
    
}


#pragma mark UIViewControllerTransitioningDelegate
- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source{
    PresentationController *vc = [[PresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    return vc;
}


-(id<RandomDelegate>)numOfSquar{
    return [RandomCalculator new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
