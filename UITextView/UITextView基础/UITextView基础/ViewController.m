//
//  ViewController.m
//  UITextView基础
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
    
    // 初始化输入框并设置位置和大小
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width - 20, 60)];
    // 设置预设文本
    textView.text = @"您的意见是我们前进的最大动力，谢谢！";
    // 设置文本字体
    textView.font = [UIFont fontWithName:@"Arial" size:16.5f];
    // 设置文本颜色
    textView.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    // 设置文本框背景颜色
    textView.backgroundColor = [UIColor whiteColor];
    // 设置文本对齐方式
    textView.textAlignment = NSTextAlignmentLeft;
    // 设置自动纠错方式
    textView.autocorrectionType = UITextAutocorrectionTypeYes;
    
    //外框
    textView.layer.borderColor = [UIColor redColor].CGColor;
    textView.layer.borderWidth = 1;
    textView.layer.cornerRadius =5;
    
    
    // 设置自动大写方式
    textView.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    // 自动大写方式有以下几种：
    //    enum {
    //        UITextAutocapitalizationTypeNone,           不自动大写
    //        UITextAutocapitalizationTypeWords,          单词首字母大写
    //        UITextAutocapitalizationTypeSentences,      句子的首字母大写
    //        UITextAutocapitalizationTypeAllCharacters,  所有字母都大写
    //    } UITextAutocapitalizationType;
    
    // 设置键盘的样式
    textView.keyboardType = UIKeyboardTypeDefault;
    
    // 键盘样式有以下几种：
    //    enum {
    //        UIKeyboardTypeDefault,                默认键盘，支持所有字符
    //        UIKeyboardTypeASCIICapable,           支持ASCII的默认键盘
    //        UIKeyboardTypeNumbersAndPunctuation,  标准电话键盘，支持＋＊＃字符
    //        UIKeyboardTypeURL,                    只支持URL字符的URL键盘，支持.com按钮
    //        UIKeyboardTypeNumberPad,              数字键盘
    //        UIKeyboardTypePhonePad,               电话键盘
    //        UIKeyboardTypeNamePhonePad,           支持输入人名的电话键盘
    //        UIKeyboardTypeEmailAddress,           电子邮件键盘
    //        UIKeyboardTypeDecimalPad,             有数字和小数点的数字键盘
    //        UIKeyboardTypeTwitter,                优化的键盘，方便输入@、#字符
    //        UIKeyboardTypeAlphabet = UIKeyboardTypeASCIICapable,
    //    } UIKeyboardType;
    
    // 设置return键样式
    textView.returnKeyType = UIReturnKeyEmergencyCall;
    
    // return键有以下几种样式：
    //    enum {
    //        UIReturnKeyDefault,        默认，灰色按钮，标有Return
    //        UIReturnKeyGo,             标有Go的蓝色按钮
    //        UIReturnKeyGoogle,         标有Google的蓝色按钮，用于搜索
    //        UIReturnKeyJoin,           标有Join的蓝色按钮
    //        UIReturnKeyNext,           标有Next的蓝色按钮
    //        UIReturnKeyRoute,          标有Route的蓝色按钮
    //        UIReturnKeySearch,         标有Search的蓝色按钮
    //        UIReturnKeySend,           标有Send的蓝色按钮
    //        UIReturnKeyYahoo,          标有Yahoo的蓝色按钮
    //        UIReturnKeyYahoo,          标有Yahoo的蓝色按钮
    //        UIReturnKeyEmergencyCall,  紧急呼叫按钮
    //    } UIReturnKeyType;
    
    // 设置是否可以拖动
    textView.scrollEnabled = YES;
    // 设置代理
    textView.delegate = self;
    //自适应高度
    textView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    // 自定义文本框字数统计
//    UILabel *count = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 100, CGRectGetMaxY(textView.frame) +5, 60, 20)];
//    count.text = @"0/100";
//    count.textAlignment = NSTextAlignmentRight;
//    count.font = [UIFont fontWithName:@"Arial" size:15.0f];
//    count.backgroundColor = [UIColor clearColor];
//    count.textColor = [UIColor redColor];
//    count.enabled = NO;
//    [self.view addSubview:count];
    
    [self.view addSubview:textView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
