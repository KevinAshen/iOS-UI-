//
//  ViewController.m
//  滚动视图高级
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
    
    //创建滚动视图
    _scrollView = [[UIScrollView alloc] init];
    
    //设定滚动视图位置
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    //取消弹动效果
    _scrollView.bounces = NO;
    
    //是否允许通过点击屏幕让滚动视图响应事件
    //YES:滚动视图可以接受触碰事件
    //NO:不接受触碰售事件
    //_scrollView.userInteractionEnabled = NO;
    
    _scrollView.contentSize = CGSizeMake(300, 400*2);
    
    for (int i = 0; i < 2; i++) {
        //生成图片名称
        NSString* strName = [NSString stringWithFormat:@"%d.jpg", i+1];
        UIImage* image = [UIImage imageNamed:strName];
        //创建图像视图对象
        UIImageView* iView = [[UIImageView alloc] init];
        //图像赋值
        iView.image = image;
        //设置图像在画布中的位置
        iView.frame = CGRectMake(0, 400*i, 300, 400);
        
        [_scrollView addSubview:iView];
    }
    
    [self.view addSubview:_scrollView];
    
    //取消按页滚动效果
    _scrollView.pagingEnabled = YES;
    
    //滚动视图画布的移动位置，偏移位置
    //功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    //将当前视图控制器作为代理对象
    _scrollView.delegate = self;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _scrollView.contentOffset = CGPointMake(0, 0);
}


//当滚动视图移动时，只要offset坐标发生变化，都会调用此函数
// 参数：调用此协议的滚动视图对象
//使用此函数监控位置
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //NSLog(@"y = %f", scrollView.contentOffset.y);
}

//当滚动结束时，调用此函数
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"Did End Drag！");
}

//滚动视图即将开始被拖动
//
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Drag");
}

//视图即将结束拖动时调用
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"Will End Drag!");
}

//视图即将减速时调用
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Deceleratg");
}

//视图已经结束减速时调用，视图停止的瞬间调用
- (void)didReceiveMemoryWarning
{
    NSLog(@"ting");
}



@end
