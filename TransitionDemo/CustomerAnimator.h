//
//  CustomerAnimator.h
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CustomerAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@property (nonatomic, assign) NSTimeInterval duration;



//- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
//                   fromVC:(UIViewController *)fromVC
//                     toVC:(UIViewController *)toVC
//                 fromView:(UIView *)fromView
//                   toView:(UIView *)toView;


@end
