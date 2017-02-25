//
//  TitleWithSwitchTableViewCell.h
//  qinfubao
//
//  Created by chuzhaozhi on 2016/10/14.
//  Copyright © 2016年 杭州格式科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TitleWithSwitchTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISwitch *controlSwitch;
/**
 * 设置标题信息
 */

-(void)setCellInfo:(NSString *)title withSwitchStatues:(BOOL )isOn;

@end
