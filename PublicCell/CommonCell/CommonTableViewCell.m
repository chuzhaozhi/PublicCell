//
//  CommonTableViewCell.m
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import "CommonTableViewCell.h"

@interface CommonTableViewCell()
@property (nonatomic, strong)UIImageView *headerImageView;
@property (nonatomic, strong)UILabel *titleLabel;
@property (nonatomic, strong)UILabel *subTitleLabel;
@property (nonatomic, strong)UIImageView *arrowImageView;
@end
@implementation CommonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self bulidUI];
        [self autoLayout];
    }
    return self;
}
-(void)bulidUI{
    self.headerImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.headerImageView];
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.titleLabel];
    self.subTitleLabel = [[UILabel alloc] init];
    self.subTitleLabel.textColor = [UIColor lightGrayColor];
    self.subTitleLabel.textAlignment = NSTextAlignmentRight;
    self.subTitleLabel.font = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:self.subTitleLabel];
    self.arrowImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.arrowImageView];
}
-(void)autoLayout{
    [self.headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.offset(10);
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.height.equalTo(21);
        make.width.equalTo(21);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.headerImageView.mas_trailing).offset(10);
        make.height.equalTo(21);
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.trailing.equalTo(self.subTitleLabel.mas_leading).offset(-10);
    }];
    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.titleLabel.mas_trailing).offset(10);
        make.height.equalTo(21);
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.trailing.equalTo(self.arrowImageView.mas_leading).offset(-10);
    }];
    [self.arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView.mas_trailing).offset(-10);
        make.width.equalTo(8);
        make.height.equalTo(13);
        make.centerY.equalTo(self.contentView.mas_centerY);
    }];
}
- (void)setCellInfoWithHeaderImage:(NSString *)imageName withTitle:(NSString *)title withSubTitle:(NSString *)subTitle withArrow:(BOOL)isHas {
    if (imageName.length<=0){
        [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
           make.leading.offset(10);
        }];
    }
    if (subTitle.length>0) {
        [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_greaterThanOrEqualTo(80);
        }];
        [self.subTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.mas_greaterThanOrEqualTo(80);
        }];
    }
    if (!isHas){
        [self.subTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
           make.trailing.equalTo(self.contentView.mas_trailing).offset(-10);
        }];
    }
    self.headerImageView.image = [UIImage imageNamed:imageName];
    self.titleLabel.text = title;
    self.subTitleLabel.text = subTitle;
    self.arrowImageView.image = [UIImage imageNamed:@"ic_arrow right"];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
