//
//  CustomView.h
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RandomDelegate <NSObject>
-(int)acrramdom;
@end

@protocol CustomViewDelegate <NSObject>
-(id<RandomDelegate>)numOfSquar;

@end

@interface CustomView : UIView


@property(nonatomic,weak)id<CustomViewDelegate> delegate;
@end

