//
//  ViewController.m
//  UIButton
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//创建圆角按钮
- (void) createUIRectButton
{
    //创建一个btn对象，根据类型来创建btn
    //圆角类型btn:UIButtonTypeRoundedRect
    //通过类方法来创建buttonWithType：类名+方法名
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //设置button按钮的位置
    btn.frame = CGRectMake(100, 100, 100, 40);
    //设置按钮的文字内容
    //@parameter
    //P1：字符串类型，显示到按钮上的文字
    //P2：设置文字显示的状态类型：UIControlStateNormal，正常状态
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    
    //P1:显示的文字
    //P2:显示文字的状态：UIControlStateHighlighted，按下状态
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    //灰色背景颜色
    btn.backgroundColor = [UIColor grayColor];
    
    //设置文字显示的颜色
    //P1:颜色
    //P2:状态
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置按下状态的颜色
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    //没有设置Highlighted时，就只会显示和普通状态一样的颜色
    
    //设置按钮的风格颜色，优先度没有前面的高，且没有状态
    [btn setTintColor:[UIColor whiteColor]];
    
    //titleLabel:UILabel空间
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    //默认大小为18
    
    //添加到视图中显示
    [self.view addSubview:btn];
}
- (void) createImageBtn
{
    //创建一个自定义类型的btn
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage* icon01 = [UIImage imageNamed:@"aa.jpg"];
    UIImage* icon02 = [UIImage imageNamed:@"timg.jpeg"];
    
    //设置按钮图片设置
    //P1:显示的图片对象
    //P2:控件的状态
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUIRectButton];
    [self createImageBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
