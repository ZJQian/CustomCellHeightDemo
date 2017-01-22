//
//  CustomCell.h
//  CustomCellHeightDemo
//
//  Created by ZJQ on 2017/1/22.
//  Copyright © 2017年 ZJQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

-(void)configCellWithText:(NSString *)text dateText:(NSString *)dateText;

+(CGFloat)cellHegith:(NSString *)text;


@end
