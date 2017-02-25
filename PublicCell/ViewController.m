//
//  ViewController.m
//  PublicCell
//
//  Created by chuzhaozhi on 2016/11/9.
//  Copyright © 2016年 chuzhaozhi. All rights reserved.
//

#import "ViewController.h"
#import "CommonTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view, typically from a nib.
}
-(UITableView *)tableView {
    if (!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.backgroundColor = [UIColor clearColor];
    }
    return _tableView;
}
-(NSArray *)dataSource {
    if (!_dataSource){
        _dataSource = [NSArray array];
        _dataSource =@[@"标题+Arrow",@"标题+副标题+Arrow",@"标题+副标题",@"标题",@"图片+标题+Arrow",@"图片+标题"];
    }
    return _dataSource;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommonTableViewCell *commonTableViewCell = [tableView dequeueReusableCellWithIdentifier:@"commonTableViewCellIdentifier"];
    if (!commonTableViewCell){
        commonTableViewCell = [[CommonTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"commonTableViewCellIdentifier"];
    }
    switch (indexPath.row) {
            case 0:{
               [commonTableViewCell setCellInfoWithHeaderImage:@"" withTitle:@"标题xxxxxxxx34r34253452345235324" withSubTitle:@"" withArrow:YES];
            }
            break;
        case 1:{
            [commonTableViewCell setCellInfoWithHeaderImage:@"" withTitle:@"标题4523534523453453245" withSubTitle:@"副标题3453453453453452fgfghffjjjfghjfghjfgjfghjfghj3452345234523" withArrow:YES];
        }
            break;
        case 2:{
            [commonTableViewCell setCellInfoWithHeaderImage:@"" withTitle:@"标题" withSubTitle:@"副标题" withArrow:NO];
        }
            break;
        case 3:{
            [commonTableViewCell setCellInfoWithHeaderImage:@"" withTitle:@"标题" withSubTitle:@"" withArrow:NO];
        }
            break;
        case 4:{
            [commonTableViewCell setCellInfoWithHeaderImage:@"per_printer" withTitle:@"标题" withSubTitle:@"副标题" withArrow:YES];
        }
            break;
        case 5:{
            [commonTableViewCell setCellInfoWithHeaderImage:@"per_printer" withTitle:@"标题" withSubTitle:@"" withArrow:YES];
        }
            break;
        default:
            break;
    }
    return commonTableViewCell;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
