//
//  InputStrTableViewCell.h
//  schoolConnection
//
//  Created by Reminisce on 16/7/19.
//  Copyright © 2016年 杭州新航线软件科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputStrTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *textField;

-(void)setCellInfo:(NSString*)title withInputDesc:(NSString*)desc;

@end
