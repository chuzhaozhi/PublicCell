//
//  InputStrTableViewCell.h
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputStrTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *textField;

-(void)setCellInfo:(NSString*)title withInputDesc:(NSString*)desc;

@end
