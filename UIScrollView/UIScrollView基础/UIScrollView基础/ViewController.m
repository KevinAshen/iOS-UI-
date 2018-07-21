//
//  ViewController.m
//  UIScrollView基础
//
//  Created by 姜凯文 on 2018/7/21.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //定义并且创建一个滚动视图
    //可以对视图的内容进行滚屏查看
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    //设置滚屏视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布大小，画布显示在滚动视图内部，一般大于Frame大小
    sv.contentSize = CGSizeMake(320*5, 576);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    //是否实现纵向滚动条
    sv.showsVerticalScrollIndicator  = YES;
    
    //设置背景颜色
    sv.backgroundColor = [UIColor yellowColor];
    //使用循环创建图片视图
    for (int i = 0; i < 2; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(320*i, 0, 320, 576);
        
        [sv addSubview:iView];
    }
    
    [self.view addSubview:sv];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
