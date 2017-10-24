//
//  CustomView.m
//  TransitionDemo
//
//  Created by aliviya on 2017/10/23.
//  Copyright © 2017年 aliviya. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = [UIColor lightGrayColor];
      
    }
    return self;
}
-(void)setDelegate:(id<CustomViewDelegate>)delegate{
    _delegate = delegate;
    int num = 0;
    if(delegate){
        id<RandomDelegate> monkey = [delegate numOfSquar];
         num = [monkey acrramdom];
        NSLog(@" ARC NUM IS ---%d",num);
    }
    UILabel *lblNum = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 180, 180)];
    lblNum.numberOfLines = 0;
    lblNum.text = [NSString stringWithFormat:@"DELEGATE 获取的num is %d",num];
    
    [self addSubview:lblNum];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/




@end
