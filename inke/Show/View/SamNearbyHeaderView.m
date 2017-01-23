//
//  SamNearbyHeaderView.m
//  inke
//
//  Created by Sam on 12/25/16.
//  Copyright © 2016 Zhejiang University of Tech. All rights reserved.
//

#import "SamNearbyHeaderView.h"

@interface SamNearbyHeaderView ()


@end

@implementation SamNearbyHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)loadHeaderView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([SamNearbyHeaderView class]) owner:self options:nil] lastObject];
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        /*
        UILabel *title1 = [[UILabel alloc] initWithFrame:CGRectMake(200, 20, 70, 20)];
        title1.textColor = [UIColor yellowColor];
        title1.text = @"只看女";
        [self addSubview:title1];
        //self.filterGender = [[UIButton alloc] initWithFrame:CGRectMake(330, 20, 40, 30)];
        self.filterGender.frame = CGRectMake(300, 20, 50, 30);
        [self.filterGender setTitle:@"fuck" forState:UIControlStateNormal];
        [self addSubview:self.filterGender];
        [self setBackgroundColor:[UIColor grayColor]];
         */
    }
    return self;
}

- (IBAction)clickFilterGender:(UIButton *)sender {
    
    if ([self.delegate respondsToSelector:@selector(headerView:clickFilterGender:)]) {
        [self.delegate headerView:self clickFilterGender:sender];
    }
}



@end
