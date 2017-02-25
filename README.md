# PublicCell
一个自定义Cell.根据传入的参数不同，展现不同的样式，Masonry进行适配约束，具体调用方法如下

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
