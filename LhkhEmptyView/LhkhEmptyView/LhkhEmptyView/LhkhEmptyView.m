//
//  LhkhEmptyView.m
//  LhkhEmptyView
//
//  Created by LHKH on 2018/2/27.
//  Copyright © 2018年 LHKH. All rights reserved.
//

#import "LhkhEmptyView.h"

@interface LhkhEmptyView()

@end

@implementation LhkhEmptyView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:244/255 green:244/255 blue:244/255 alpha:1];
        [self addSubview:self.tipsImage];
        [self addSubview:self.tipsLabel];
        [self addSubview:self.tipsButton];
    }
    return self;
}


#pragma mark - Layout SubViews

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.tipsImage setFrame:CGRectMake((self.frame.size.width - 80)/2, (self.frame.size.height - 80)/2 - 25, 80, 80)];
    [self.tipsLabel setFrame:CGRectMake(0, CGRectGetMaxY(self.tipsImage.frame)+5, self.frame.size.width, 20)];
    [self.tipsButton setFrame:CGRectMake(0, CGRectGetMaxY(self.tipsLabel.frame)+5, self.frame.size.width, 20)];
}


#pragma mark - System Delegate




#pragma mark - Custom Delegate




#pragma mark - Event Response




#pragma mark - Network requests




#pragma mark - Public Methods




#pragma mark - Private Methods




#pragma mark - Setters

- (UIImageView *)tipsImage
{
    if (!_tipsImage) {
        _tipsImage = [[UIImageView alloc] init];
    }
    return _tipsImage;
}


- (UILabel *)tipsLabel
{
    if (!_tipsLabel) {
        _tipsLabel = [[UILabel alloc] init];
        _tipsLabel.font = [UIFont systemFontOfSize:14];
        _tipsLabel.textColor = [UIColor colorWithRed:200/255 green:200/255 blue:200/255 alpha:1];
        _tipsLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _tipsLabel;
}

- (UIButton *)tipsButton
{
    if(!_tipsButton){
        _tipsButton = [[UIButton alloc]init];
        _tipsButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _tipsButton.titleLabel.textColor = [UIColor colorWithRed:160/255 green:160/255 blue:160/255 alpha:1];
        _tipsButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _tipsButton;
}

#pragma mark - Getters



@end
