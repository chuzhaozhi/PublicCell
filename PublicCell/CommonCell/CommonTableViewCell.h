//
//  CommonTableViewCell.h
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonTableViewCell : UITableViewCell
-(void)setCellInfoWithHeaderImage:(NSString *)imageName withTitle:(NSString *)title withSubTitle:(NSString *)subTitle withArrow:(BOOL )isHas;
@end
