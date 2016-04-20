//
//  ViewController.m
//  RoundedCorners
//
//  Created by myApplePro01 on 16/4/20.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+CornerImge.h"
#import "UIImageView+corner.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"VCCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    UIImageView *icon = [cell viewWithTag:101];
    UIImageView *lable1 = [cell viewWithTag:102];
    UIImageView *lable2 = [cell viewWithTag:103];
    UIImageView *lable3 = [cell viewWithTag:104];
    
    
#pragma one  57 - 60
    //    icon.image = [icon circleImageViewDrawInRectRoundedCorners:1];
    //    lable1.image = [lable1 circleImageViewDrawInRectRoundedCorners:3];
    //    lable2.image = [lable2 circleImageViewDrawInRectRoundedCorners:5];
    //    lable3.image = [lable3 circleImageViewDrawInRectRoundedCorners:7];
#pragma one+  57 - 60
        icon.image = [icon circleImageViewDrawRectWithRoundedCorners:5 RectCorner:UIRectCornerAllCorners];
        lable1.image = [lable1 circleImageViewDrawRectWithRoundedCorners:8 RectCorner:UIRectCornerAllCorners];
        lable2.image = [lable2 circleImageViewDrawRectWithRoundedCorners:11 RectCorner:UIRectCornerBottomLeft | UIRectCornerBottomRight];
        lable3.image = [lable3 circleImageViewDrawRectWithRoundedCorners:14 RectCorner:UIRectCornerTopLeft | UIRectCornerTopRight];
#pragma two  57 - 60
    //    icon.image = [UIImage createRoundedRectImage:[UIImage imageNamed:@"mytupian.jpg"] size:icon.bounds.size radius:10];
    //    lable1.image = [UIImage createRoundedRectImage:[UIImage imageNamed:@"mytupian.jpg"] size:icon.bounds.size radius:10];
    //    lable2.image = [UIImage createRoundedRectImage:[UIImage imageNamed:@"mytupian.jpg"] size:icon.bounds.size radius:10];
    //    lable3.image = [UIImage createRoundedRectImage:[UIImage imageNamed:@"mytupian.jpg"] size:icon.bounds.size radius:10];
    
#pragma three  42 - 45
//    icon.layer.cornerRadius = 5;
//    lable1.layer.cornerRadius = 5;
//    lable2.layer.cornerRadius = 5;
//    lable3.layer.cornerRadius = 5;
//    
//    icon.layer.masksToBounds = YES;
//    lable1.layer.masksToBounds = YES;
//    lable2.layer.masksToBounds = YES;
//    lable3.layer.masksToBounds = YES;
    
    return cell;
}


@end
