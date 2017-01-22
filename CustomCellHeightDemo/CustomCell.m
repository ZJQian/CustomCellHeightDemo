//
//  CustomCell.m
//  CustomCellHeightDemo
//
//  Created by ZJQ on 2017/1/22.
//  Copyright © 2017年 ZJQ. All rights reserved.
//

#import "CustomCell.h"
#import "Define.h"
static const CGFloat SPACE = 15.0;


@interface CustomCell ()
{

    UILabel *            _dateLabel;
    UILabel *            _contentLabel;

}
@end


@implementation CustomCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
      
        [self setupSubViews];
    }
    return self;
}

- (void)setupSubViews {

    UILabel *dateLabel = [[UILabel alloc]init];
    dateLabel.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:dateLabel];
    [dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView).mas_offset(SPACE);
        make.right.mas_equalTo(self.contentView).mas_offset(-SPACE);
        make.top.mas_equalTo(self.contentView).mas_offset(SPACE);
        make.height.mas_offset(SPACE);
    }];
    _dateLabel = dateLabel;
    
    
    UILabel *contentLabel = [[UILabel alloc]init];
    contentLabel.font = [UIFont systemFontOfSize:13];
    contentLabel.textColor = [UIColor lightGrayColor];
    contentLabel.numberOfLines = 0;
    [self.contentView addSubview:contentLabel];
    [contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView).mas_offset(SPACE);
        make.right.mas_equalTo(self.contentView).mas_offset(-SPACE);
        make.top.mas_equalTo(dateLabel.mas_bottom).mas_offset(SPACE);
    }];
    _contentLabel = contentLabel;
}

-(void)configCellWithText:(NSString *)text dateText:(NSString *)dateText
{
    _dateLabel.text=dateText;
    
    _contentLabel.attributedText = [CustomCell cellTextAttributed:text];
}

+(CGFloat)cellHegith:(NSString *)text
{
    CGFloat result=60;
    if (text.length>0) {
        result=result+[[self cellTextAttributed:text] boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-2*SPACE, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.height;
    }
    return result;
}


+(NSAttributedString *)cellTextAttributed:(NSString *)text
{
    //富文本设置文字行间距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineSpacing = 4;
    
    NSDictionary *attributes = @{ NSFontAttributeName:[UIFont systemFontOfSize:13], NSParagraphStyleAttributeName:paragraphStyle};
    return [[NSAttributedString alloc]initWithString:text attributes:attributes];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
