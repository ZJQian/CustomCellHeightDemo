//
//  UIView+Ext.h
//  CustomCellHeightDemo
//
//  Created by ZJQ on 2017/1/22.
//  Copyright © 2017年 ZJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Ext)


/**
 width 宽度
 */
@property (nonatomic, assign) CGFloat width;

/**
 height 高度
 */
@property (nonatomic, assign) CGFloat height;

/**
 top 顶部y坐标
 */
@property (nonatomic, assign) CGFloat top;

/**
 left 左侧x坐标
 */
@property (nonatomic, assign) CGFloat left;

/**
 bottom 底部y坐标
 */
@property (nonatomic, assign) CGFloat bottom;

/**
 right 右侧x坐标
 */
@property (nonatomic, assign) CGFloat right;

/**
 origin
 */
@property (nonatomic, assign) CGPoint origin;

/**
 size 尺寸
 */
@property (nonatomic, assign) CGSize size;


@end
