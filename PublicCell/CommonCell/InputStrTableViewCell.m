//
//  InputStrTableViewCell.m
//  schoolConnection
//
//  Created by Reminisce on 16/7/19.
//  Copyright © 2016年 杭州新航线软件科技有限公司. All rights reserved.
//

#import "InputStrTableViewCell.h"
#import "View+MASShorthandAdditions.h"

@interface InputStrTableViewCell()

@end

@implementation InputStrTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.font = FONT(14);
        self.titleLabel.textColor = COLOR_TITLE;

        self.textField = [[UITextField alloc] init];
        self.textField.font = FONT(12);
        self.textField.textColor = RGB(130,130,130);
        self.textField.textAlignment = NSTextAlignmentLeft;
        
        [self addSubview];
        [self autoLayout];
        
    }
    return self;
    
}

/**
 * 添加页面
 */
-(void)addSubview{
    
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.textField];
    
}
/**
 * 页面自动适配
 */
-(void) autoLayout{
    
    [self.titleLabel makeConstraints:^(MASConstraintMaker *make) {
        make.leading.offset(12.5);
        make.centerY.equalTo(self.contentView.centerY);
        make.width.equalTo(80);
        make.trailing.equalTo(self.textField.leading).offset(-10);
    }];
    
    [self.textField makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.centerY);
        make.trailing.offset(-10);
        make.top.offset(10);
        make.bottom.offset(-10);
    }];

}

-(void)setCellInfo:(NSString*)title withInputDesc:(NSString*)desc{
    
    _titleLabel.text = title;
    _textField.placeholder = desc;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
