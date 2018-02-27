//
//  LhkhEmptyViewManager.m
//  LhkhEmptyView
//
//  Created by LHKH on 2018/2/27.
//  Copyright © 2018年 LHKH. All rights reserved.
//

#import "LhkhEmptyViewManager.h"
#import "LhkhEmptyView.h"
static TipsType currentType;
static LhkhEmptyViewManager *instance = nil;
@implementation LhkhEmptyViewManager


+ (instancetype)sharedTipsManager
{
    return [[self alloc] init];
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    if(instance == nil){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            instance = [super allocWithZone:zone];
        });
    }
    return instance;
}

- (id)init
{
    if(instance == nil){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            instance = [super init];
        });
    }
    return instance;
}

- (void)showTipsViewType:(TipsType)type toView:(UIView *)view
{
    //回收上一次的tipView,如果有
    [self removeTipsViewFromView:view];
    
    LhkhEmptyView *tipsView = [[LhkhEmptyView alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
    [view addSubview:tipsView];
    
    currentType = type;
    
    if (type == TipsType_NetWorkLost) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"wifi关"];
        tipsView.tipsLabel.text = @"您的网络好像走失了，请检查一下吧";
        tipsView.backgroundColor = [UIColor clearColor];
        
    }else if (type == TipsType_HaveNoOrder) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无订单"];
        tipsView.tipsLabel.text = @"暂时没有订单额";
        tipsView.backgroundColor = [UIColor clearColor];
        
    }else if (type == TipsType_LocationOff) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无地图"];
        tipsView.tipsLabel.text = @"定位失败";
        tipsView.backgroundColor = [UIColor whiteColor];
        
    }else if (type == TipsType_HaveNoSearchResult) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"搜索结果"];
        tipsView.tipsLabel.text = @"暂无搜索结果";
        tipsView.backgroundColor = [UIColor clearColor];
        
    }else if (type == TipsType_HaveNoMessage) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无消息"];
        tipsView.tipsLabel.text = @"暂无消息";
        tipsView.backgroundColor = [UIColor clearColor];
        
    }else if (type == TipsType_HaveNoFavourite) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无收藏"];
        tipsView.tipsLabel.text = @"暂无收藏，赶紧去收藏吧";
        tipsView.backgroundColor = [UIColor clearColor];
        
    }else if (type == TipsType_HaveNoAddress) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无地址"];
        tipsView.tipsLabel.text = @"还没有常用地址哦";
        tipsView.backgroundColor = [UIColor clearColor];
    }else if (type == TipsType_HaveNoGoods) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无商品"];
        tipsView.tipsLabel.text = @"暂时没有商品哦";
        tipsView.backgroundColor = [UIColor clearColor];
    }else if (type == TipsType_HaveNoTips) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无标签"];
        tipsView.tipsLabel.text = @"暂无标签哦～";
        tipsView.backgroundColor = [UIColor clearColor];
    }else if (type == TipsType_HaveNoCoupon) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无优惠券"];
        tipsView.tipsLabel.text = @"还没有优惠券额～";
        tipsView.backgroundColor = [UIColor clearColor];
    }else if (type == TipsType_HaveNoCats) {
        
        tipsView.tipsImage.image = [UIImage imageNamed:@"无标签"];
        tipsView.tipsLabel.text = @"暂无类别哦～";
        tipsView.backgroundColor = [UIColor clearColor];
    }
}

- (void)showCustomTipsViewType:(NSDictionary*)dic toView:(UIView *)view
{
    //回收上一次的tipView,如果有
    [self removeTipsViewFromView:view];
    
    LhkhEmptyView *tipsView = [[LhkhEmptyView alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
    [view addSubview:tipsView];

}

-(void)removeTipsViewFromView:(UIView *)view
{
    for (UIView *sub in view.subviews) {
        if ([sub isKindOfClass:[LhkhEmptyView class]]) {
            LhkhEmptyView *tipsView = (LhkhEmptyView *)sub;
            [tipsView removeFromSuperview];
            tipsView = nil;
        }
    }
}

@end
