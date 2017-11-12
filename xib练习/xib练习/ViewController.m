//
//  ViewController.m
//  xib练习
//
//  Created by companycn on 2017/10/24.
//  Copyright © 2017年 companycn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10.f;// 字体的行间距
    
    paragraphStyle.paragraphSpacing = 4.f;//段落间距
   
    paragraphStyle.firstLineHeadIndent = 40.f; // 段落缩进像素
    
    paragraphStyle.headIndent = 15.f;// 整体缩进像素
    // 对齐方式
    paragraphStyle.alignment = NSTextAlignmentLeft;
    // 其他属性请自行查阅NSMutableParagraphStyle头文件
    
    
        NSDictionary *attributes = @{
                                     NSFontAttributeName:[UIFont systemFontOfSize:14],
                                     NSParagraphStyleAttributeName:paragraphStyle
                                     };
    
    NSMutableAttributedString *str  = [[NSMutableAttributedString alloc]initWithString:@"\*单张小票最小金额20元。\n\*每次拍摄请只上传一张小票。\n\*每日获取积分上限为6000积分。（深圳来福士上限为20000积分，上海来福士和成都金牛上线为10000积分。)\n\*小票上传截止日期为购买商品后的第二日24:00前，逾期小票恕无法积分。\n\*小票审核通过后，积分将在3~5个工作日内到账。\n\*有任何疑问请洽4008-957957凯德星客服热线咨询。)" attributes:attributes];
    [str addAttribute:NSForegroundColorAttributeName
                    value:[UIColor redColor]
                    range:NSMakeRange(4, 3)];
    NSLog(@"%ld",_label.numberOfLines);
    NSLog(@"   wwf  r\*\*er\nwdwe");
    
    NSString *str1 = @"\*单张小票最小金额20元。\n\*每次拍摄请只上传一张小票。\n\*每日获取积分上限为6000积分。（深圳来福士上限为20000积分，上海来福士和成都金牛上线为10000积分。)\n\*小票上传截止日期为购买商品后的第二日24:00前，逾期小票恕无法积分。\n\*小票审核通过后，积分将在3~5个工作日内到账。\n\*有任何疑问请洽4008-957957凯德星客服热线咨询。)";
//   NSArray *number= @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
//
//    for (int i = 0; i < str.length; i ++) {
//        //这里的小技巧，每次只截取一个字符的范围
//        NSString *a = [str1 substringWithRange:NSMakeRange(i, 1)];
//        //判断装有0-9的字符串的数字数组是否包含截取字符串出来的单个字符，从而筛选出符合要求的数字字符的范围NSMakeRange
//        if ([number containsObject:a]) {
//            [str setAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor],NSFontAttributeName:[UIFont systemFontOfSize:25],NSUnderlineStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle]} range:NSMakeRange(i, 1)];
//
//
//        }
//
//    }
    NSString *xingxing = @"\*";
    
    for (int i = 0; i < str.length; i ++) {
        //这里的小技巧，每次只截取一个字符的范围
        NSString *a = [str1 substringWithRange:NSMakeRange(i, 1)];
        
        if ([a isEqualToString:xingxing]) {
            [str setAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} range:NSMakeRange(i, 1)];
            
            
        }
        
    }
    _label.attributedText = str;
    
    //_label.font = [UIFont systemFontOfSize:14];
    
    //    paragraphStyle.lineSpacing = 10;// 字体的行间距
    //
    //    NSDictionary *attributes = @{
    //                                 NSFontAttributeName:[UIFont systemFontOfSize:M_WIDTH(10)],
    //                                 NSParagraphStyleAttributeName:paragraphStyle
    //                                 };
    //    //textView.attributedText = [[NSAttributedString alloc] initWithString:@"输入你的内容" attributes:attributes];
    //    UITextView *text1 = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, buttom_W, M_WIDTH(20))];
    //
    //    text1.scrollEnabled = NO;
    //    text1.backgroundColor = UIColorFromRGB(0xebebeb);
    //    text1.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //    text1.text = @"单张小票最小金额20元。";
    //
    //    UITextView *text2 = [[UITextView alloc]initWithFrame:CGRectMake(0, M_WIDTH(20), buttom_W,M_WIDTH(20))];
    //    text2.scrollEnabled = NO;
    //    text2.backgroundColor = UIColorFromRGB(0xebebeb);
    //     text2.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //    text2.text = @"每次拍摄请只上传一张小票。";
    //    UITextView *text3 = [[UITextView alloc]initWithFrame:CGRectMake(0, M_WIDTH(40), buttom_W, M_WIDTH(80))];
    //    text3.scrollEnabled = NO;
    //    text3.backgroundColor = UIColorFromRGB(0xebebeb);
    //     text3.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //
    //    text3.attributedText = [[NSAttributedString alloc] initWithString:@"每日获取积分上限为6000积分。（深圳来福士上限为20000积分，上海来福士和成都金牛上线为10000积分。)" attributes:attributes];
    //    UITextView *text4 = [[UITextView alloc]initWithFrame:CGRectMake(0, M_WIDTH(100), buttom_W, M_WIDTH(50))];
    //     text4.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //    text4.backgroundColor = UIColorFromRGB(0xebebeb);
    //    text4.attributedText = [[NSAttributedString alloc] initWithString:@"小票上传截止日期为购买商品后的第二日24:00前，逾期小票恕无法积分。" attributes:attributes];
    //    text4.scrollEnabled = NO;
    //    UITextView *text5 = [[UITextView alloc]initWithFrame:CGRectMake(0, M_WIDTH(140), buttom_W,M_WIDTH(20))];
    //    text5.scrollEnabled = NO;
    //    text5.backgroundColor = UIColorFromRGB(0xebebeb);
    //     text5.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //    text5.text = @"小票审核通过后，积分将在3~5个工作日内到账。";
    //    UITextView *text6 = [[UITextView alloc]initWithFrame:CGRectMake(0, M_WIDTH(160), buttom_W,M_WIDTH(50))];
    //    text6.scrollEnabled = NO;
    //    text6.backgroundColor = UIColorFromRGB(0xebebeb);
    //     text6.font = [UIFont systemFontOfSize:M_WIDTH(10)];
    //    text6.attributedText = [[NSAttributedString alloc] initWithString:@"有任何疑问请洽4008-957957凯德星客服热线咨询。" attributes:attributes];
    //
    //    [contentScrollView addSubview:text1];
    //    [contentScrollView addSubview:text2];
    //    [contentScrollView addSubview:text3];
    //    [contentScrollView addSubview:text4];
    //    [contentScrollView addSubview:text5];
    //    [contentScrollView addSubview:text6];
                        
                        }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
