//
//  ViewController.h
//  滚动视图高级
//
//  Created by 姜凯文 on 2018/7/21.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
    //当前视图控制器要实现协议的UIScrollView的协议函数
{
    //定义滚动视图成团变量
    UIScrollView* _scrollView;
}

@end

