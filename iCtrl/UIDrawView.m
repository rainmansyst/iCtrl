//
//  UIDrawView.m
//  iCtrl
//
//  Created by Ideapool Ideapool on 15/5/20.
//  Copyright (c) 2015年 Ideapool. All rights reserved.
//

#import "UIDrawView.h"

@implementation UIDrawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    for (int i=0; i<10; i++) {
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(10, 10+i*40, 67, 30)];
        [btn setBackgroundColor:[UIColor redColor]];
        [btn setBackgroundImage:[UIImage imageNamed:@"btn_n"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"btn_h"] forState:UIControlStateHighlighted];
        //[btn addTarget:self action:@selector(ClickControlAction:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTag:i];
        
        [self addSubview:btn];
        
        
        CAGradientLayer *gradient = [CAGradientLayer layer];
        gradient.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        gradient.colors = [NSArray arrayWithObjects:
                           (id)[UIColor blackColor].CGColor,
                           (id)[UIColor grayColor].CGColor,
                           (id)[UIColor blackColor].CGColor,
                           nil];
        gradient
        [self.layer insertSublayer:gradient atIndex:0];
        
    }
}


@end
