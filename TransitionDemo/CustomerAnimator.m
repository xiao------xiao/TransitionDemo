//
//  CustomerAnimator.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "CustomerAnimator.h"

@implementation CustomerAnimator

- (instancetype)init {
    if (self = [super init]) {
        self.duration = 0.5f;
    }
    return self;
}


- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return self.duration;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *toView = toVC.view;
    UIView *fromView = fromVC.view;
    
    [self animateTransition:transitionContext fromVC:fromVC toVC:toVC fromView:fromView toView:toView];
}
//图片放大缩小的转场
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext fromVC:(UIViewController *)fromVC toVC:(UIViewController *)toVC fromView:(UIView *)fromView toView:(UIView *)toView {
    
//    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *toImageView = [toVC valueForKeyPath:@"imageview"];

    UIView *containerView = [transitionContext containerView];
    UIView *snapShotView = [fromVC valueForKeyPath:@"imgvWanle"];
    
//    UIView *snapShotView = [self.fromView snapshotViewAfterScreenUpdates:NO];
//    snapShotView.frame = [containerView convertRect:self.fromView.frame fromView:self.fromView.superview];
//    self.fromView.hidden = YES;
    
    toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
    toVC.view.alpha = 0;
    toImageView.hidden = YES;
    
//    toVC.fromView = self.fromView;
//    toVC.toViewKeyPath = self.toViewKeyPath;
    
    [containerView addSubview:toVC.view];
    [containerView addSubview:snapShotView];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0f usingSpringWithDamping:0.6f initialSpringVelocity:1.0f options:UIViewAnimationOptionCurveLinear animations:^{
        [containerView layoutIfNeeded];
        toVC.view.alpha = 1.0f;
        snapShotView.frame = [containerView convertRect:toImageView.frame fromView:toImageView.superview];
        
    } completion:^(BOOL finished) {
        
          toImageView.hidden = NO;
        
        fromView.hidden = NO;
        [snapShotView removeFromSuperview];
        
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
    
    
}
//从下面进入页面内的动画效果
//- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext fromVC:(UIViewController *)fromVC toVC:(UIViewController *)toVC fromView:(UIView *)fromView toView:(UIView *)toView {
////    NSAssert(NO, @"Subclass should override this method");
//
//    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
//    UIView *containerView = [transitionContext containerView];
////    UIView *toView = toViewController.view;
//    [containerView addSubview:toView];
//
//    CGRect finalFrame = [transitionContext finalFrameForViewController:toViewController];
//    toView.frame = finalFrame;
//
//    CGPoint center = toView.center;
//    center.y += containerView.bounds.size.height;
//    toView.center = center;
//
//    [UIView animateWithDuration:[self transitionDuration:transitionContext]
//                          delay:0.0
//         usingSpringWithDamping:1.0
//          initialSpringVelocity:0.0
//                        options:UIViewAnimationOptionCurveLinear
//                     animations:^{
//                         CGPoint center = toView.center;
//                         center.y -= containerView.bounds.size.height;
//                         toView.center = center;
//                     } completion:^(BOOL finished) {
//                         [transitionContext completeTransition:finished];
//                     }];
//
//
//}
//



@end
