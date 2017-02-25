//
//  TitleWithSwitchTableViewCell.h
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TitleWithSwitchTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISwitch *controlSwitch;
/**
 * 设置标题信息
 */

-(void)setCellInfo:(NSString *)title withSwitchStatues:(BOOL )isOn;

@end
