//
//  CommonTableViewCell.h
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonTableViewCell : UITableViewCell
/**
 对外暴露设置cell方法

 @param imageName 传入图片名字
 @param title 标题
 @param subTitle 副标题
 @param isHas 是否有arrow
 */
-(void)setCellInfoWithHeaderImage:(NSString *)imageName withTitle:(NSString *)title withSubTitle:(NSString *)subTitle withArrow:(BOOL )isHas;
@end
