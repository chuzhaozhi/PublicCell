//
//  TextViewTableViewCell.m
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import <Masonry/View+MASShorthandAdditions.h>
#import "TextViewTableViewCell.h"

@interface TextViewTableViewCell()<UITextViewDelegate>



@end

@implementation TextViewTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        [self.contentView addSubview:self.textView];
        [self.textView addSubview:self.label];
        [_label makeConstraints:^(MASConstraintMaker *make) {
            make.leading.offset(6);
            make.trailing.offset(0);
            make.top.offset(6);
        }];
        [_textView makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(4);
            make.leading.offset(12.5);
            make.trailing.offset(-12.5);
            make.bottom.offset(-4);
            make.height.equalTo(70);
        }];
    }
    return self;

}

- (UITextView *)textView {

    if(!_textView){

        _textView = [[UITextView alloc] init];
        _textView.delegate = self;
        _textView.textColor = COLOR_DETAIL;
    }
    return _textView;
}

- (UILabel *)label {
    if(!_label){

        _label = [[UILabel alloc] init];
        _label.numberOfLines = 0;
        _label.textColor = RGB(203, 203, 203);
        _label.font = FONT(14);
    }
    return _label;
}

- (void)textViewDidChange:(UITextView *)textView {

    if(self.textView.text.length > 0){
        self.label.alpha = 0;
    } else{
        self.label.alpha = 1;
    }

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
