//
//  LhkhEmptyViewManager.h
//  LhkhEmptyView
//
//  Created by LHKH on 2018/2/27.
//  Copyright © 2018年 LHKH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/*
 *TipsType状态*
 */
typedef NS_ENUM(NSUInteger, TipsType){
    TipsType_NetWorkLost = 0,       //无网络链接
    TipsType_HaveNoOrder,           //无订单信息
    TipsType_LocationOff,           //未开启定位
    TipsType_HaveNoSearchResult,    //无搜索结果
    TipsType_HaveNoMessage,         //无系统消息
    TipsType_HaveNoFavourite,       //无个人收藏
    TipsType_HaveNoAddress,         //无地址信息
    TipsType_HaveNoEva,             //无评论
    TipsType_HaveNoGoods,           //无商品
    TipsType_HaveNoTips,            //无标签
    TipsType_HaveNoCoupon,          //无优惠券
    TipsType_HaveNoCats            //无类别
};
@interface LhkhEmptyViewManager : NSObject

/*
 *单例*
 */
+ (instancetype)sharedTipsManager;

/*
 *展示到当前view*
 */
- (void)showTipsViewType:(TipsType)type toView:(UIView *)view;

/*
 *展示自定义的tips到当前view*
 */
- (void)showCustomTipsViewType:(NSDictionary*)dic toView:(UIView *)view;

/*
 *从当前view移除*
 */
- (void)removeTipsViewFromView:(UIView *)view;
@end
