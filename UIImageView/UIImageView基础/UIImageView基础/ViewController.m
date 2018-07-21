//
//  ViewController.m
//  UIImageView基础
//
//  Created by 姜凯文 on 2018/7/21.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createImageBtn
{
    //这是初始化
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    
    //这才是设置图片
   [imageView setImage:[UIImage imageNamed:@"7.jpg"]];
    //UIImage* icon02 = [UIImage imageNamed:@"7.jpg"];
    
    imageView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"3.jpg"], [UIImage imageNamed:@"2.jpg"],[UIImage imageNamed:@"7.jpg"], nil];
    
    imageView.animationDuration = 0.3f; // 设置循环一次的时间
    
    imageView.animationRepeatCount = 0; // 循环的次数。设置为0时无限循环
    
    [imageView startAnimating]; // 开始动画
    
    // [oneImageView stopAnimating]; // 停止动画
    

    
    [self.view addSubview:imageView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createImageBtn];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
