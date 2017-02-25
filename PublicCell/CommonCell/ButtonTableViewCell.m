//
//  ButtonTableViewCell.m
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//
#import "ButtonTableViewCell.h"
#import "View+MASShorthandAdditions.h"


@interface ButtonTableViewCell()

@property (nonatomic,strong) UILabel *titleLabel;

@end


@implementation ButtonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.backgroundColor = [UIColor redColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.layer.masksToBounds = YES;
        self.titleLabel.layer.cornerRadius = 22;
        self.backgroundColor = [UIColor lightGrayColor];

        [self addSubview];
        
        [self autoLayout];
        
    }
    return self;
    
}

-(void)setButtonTitle:(NSString*)title{
    
    self.titleLabel.text = title;

}

/**
 * 添加页面
 */
-(void)addSubview{
    
    [self.contentView addSubview:self.titleLabel];
    
}
/**
 * 页面自动适配
 */
-(void) autoLayout{
    
    [self.titleLabel makeConstraints:^(MASConstraintMaker *make) {
        make.leading.offset(12.5);
        make.centerY.equalTo(self.contentView.centerY);
        make.trailing.offset(-12.5);
        make.height.equalTo(44);
    }];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
