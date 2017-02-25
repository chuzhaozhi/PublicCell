//
//  TitleWithSwitchTableViewCell.m
//  qinfubao
//
//  Created by chuzhaozhi on 2016/10/14.
//  Copyright © 2016年 杭州格式科技有限公司. All rights reserved.
//

#import "TitleWithSwitchTableViewCell.h"
@interface TitleWithSwitchTableViewCell ()
{
    NSInteger switchState;
}

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end
@implementation TitleWithSwitchTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}

/**
 * 设置标题信息
 */
-(void)setCellInfo:(NSString *)title withSwitchStatues:(BOOL )isOn{
    [self.controlSwitch setOn:isOn animated:YES];
    self.titleLabel.text = title;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    CGContextFillRect(context, rect);
    
    //    //上分割线，
//        CGContextSetStrokeColorWithColor(context, RGBA(186, 206, 225, 1).CGColor);
//        CGContextStrokeRect(context, CGRectMake(0, -1, rect.size.width, 1));
    //  下分割线
    CGContextSetStrokeColorWithColor(context,RGBA(186, 206, 225, 1).CGColor);
    CGContextStrokeRect(context, CGRectMake(0, rect.size.height-0.1, rect.size.width, 0.001));
}
@end
