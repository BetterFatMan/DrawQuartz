//
//  YellowPerson.m
//  DrawQuartz
//
//  Created by mac on 15/8/26.
//  Copyright (c) 2015年 彭彬. All rights reserved.
//

#import "YellowPerson.h"

#define kScreenW   [UIScreen mainScreen].bounds.size.width

#define kScreenH   [UIScreen mainScreen].bounds.size.height

@implementation YellowPerson

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    
    drawYellowPeopleActionOne();
}

void drawYellowPeopleActionOne()
{
    
//    头部大圆
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ref);//压入栈
    CGContextAddEllipseInRect(ref, CGRectMake(60, 50, kScreenW - 120, kScreenW - 120));
    CGContextSetRGBFillColor(ref, 8/255.0, 135/255.0, 215/255.0, 1);
    CGContextFillPath(ref);
//    脚
    [[UIColor grayColor] set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-105, 440, 100, 60));
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2, 440, 100, 60));
    CGContextStrokePath(ref);
    
//    下部身子的园
    CGContextSetRGBFillColor(ref, 8/255.0, 135/255.0, 215/255.0, 1);
    CGContextAddEllipseInRect(ref, CGRectMake(70, kScreenW-140, kScreenW - 140, kScreenW - 140));
    CGContextFillPath(ref);
    

    
//    两只胳膊
    //左边胳膊
    CGContextMoveToPoint(ref, 30, kScreenW-140);
    CGContextAddLineToPoint(ref, 120, kScreenW-120+50);
    CGContextSetLineWidth(ref, 45);
    CGContextSetRGBStrokeColor(ref, 8/255.0, 135/255.0, 255/255.0, 1);
    CGContextStrokePath(ref);
    
    //左手👋
    [[UIColor whiteColor] set];
     CGContextAddArc(ref, 30, kScreenW-140, 22.5, 0, M_PI*2, 0);
    CGContextFillPath(ref);
    
    CGContextRestoreGState(ref);//压出栈
    CGContextSaveGState(ref);//压入栈
    [[UIColor grayColor] set];
    CGContextAddArc(ref, 30, kScreenW-140, 22.5, 0, M_PI*2, 0);
    CGContextStrokePath(ref);

    //平移得到右边胳膊
    CGContextTranslateCTM(ref, kScreenW-150, 20);
    CGContextMoveToPoint(ref, 30, kScreenW-140);
    CGContextAddLineToPoint(ref, 120, kScreenW-120+50);
    CGContextSetLineWidth(ref, 45);
    CGContextSetRGBStrokeColor(ref, 8/255.0, 135/255.0, 255/255.0, 1);
    CGContextStrokePath(ref);
    
    //右手👋
    CGContextRestoreGState(ref);//压出栈
    CGContextSaveGState(ref);//压入栈
    [[UIColor whiteColor] set];
    CGContextAddArc(ref, kScreenW-30, kScreenW-50, 22.5, 0, M_PI*2, 0);
    CGContextFillPath(ref);
    
    [[UIColor grayColor] set];
    CGContextAddArc(ref, kScreenW-30, kScreenW-50, 22.5, 0, M_PI*2, 0);
    CGContextStrokePath(ref);
    
//    花白色脸
    CGContextRestoreGState(ref);//压出栈
    CGContextSaveGState(ref);//压入栈
    CGContextAddEllipseInRect(ref, CGRectMake(70, 90, kScreenW - 140, kScreenW - 170));
    CGContextSetRGBFillColor(ref, 1, 1, 1, 1);
//    [[UIColor whiteColor] set];
    CGContextFillPath(ref);
    
//   画白色肚子
    CGContextAddEllipseInRect(ref, CGRectMake(80, kScreenW-140+50, kScreenW-160, (kScreenW-100)/2));
    CGContextFillPath(ref);
    
    //肚兜
    [[UIColor grayColor]set];
    CGContextMoveToPoint(ref, 114, 350);
    CGContextAddArc(ref, kScreenW/2, 320, 80, M_PI_4*.55, M_PI_2*1.75, 0);
    CGContextStrokePath(ref);
    
//   画眼睛👀
    //眼睛👀白框
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-70, 72, 60, 60));
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2+5, 72, 60, 60));
    CGContextStrokePath(ref);
    
    CGContextSetRGBFillColor(ref, 1, 1, 1, 1);
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-70, 72, 60, 60));
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2+5, 72, 60, 60));
    CGContextFillPath(ref);
    
    //👀黑眼珠
    [[UIColor blackColor]set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-38, 92, 16, 16));
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2+18, 92, 16, 16));
    CGContextFillPath(ref);
    //👀黑眼珠中的白眼球
    [[UIColor whiteColor]set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-30, 97, 5, 5));
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2+21, 97, 5, 5));
    CGContextFillPath(ref);
    
//    红鼻子
    [[UIColor redColor]set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-25, 120, 45, 30));
    CGContextFillPath(ref);
    
//    脸部线条
    //👃
    [[UIColor grayColor]set];
    CGContextMoveToPoint(ref, kScreenW/2-2.5, 150);
    CGContextAddLineToPoint(ref, kScreenW/2-2.5, 190);
    CGContextStrokePath(ref);
    
//    画笑脸弧线
    //左
    CGContextMoveToPoint(ref, kScreenW/2-80, 140);//开始坐标p1
    CGContextAddQuadCurveToPoint(ref, kScreenW/2-80-80, 185, kScreenW/2-2.5, 190);
    //右
    CGContextAddQuadCurveToPoint(ref, kScreenW/2+75+80, 185, kScreenW/2+75, 140);
    CGContextStrokePath(ref);//绘画路径
    //👄下面
    [[UIColor redColor]set];
    CGContextSetLineJoin(ref, kCGLineJoinRound);
    CGContextMoveToPoint(ref, kScreenW/2-90, 180);//开始坐标p1
    //左
    CGContextAddQuadCurveToPoint(ref, kScreenW/2-90+20, 190, kScreenW/2-80+30, 255);
    //中
    CGContextAddQuadCurveToPoint(ref, kScreenW/2-2.5, 280, kScreenW/2+80-30-2.5, 255);
    //右
    CGContextAddQuadCurveToPoint(ref, kScreenW/2+90-20-2.5, 190, kScreenW/2+90-2.5, 179);
    //上部闭合
    CGContextAddQuadCurveToPoint(ref, kScreenW/2-2.5, 202, kScreenW/2-90, 180);
    CGContextFillPath(ref);
    
//    👄里面的❤️
    [[UIColor orangeColor] set];
    CGContextSetLineWidth(ref, 30);
    CGContextMoveToPoint(ref, kScreenW/2-2.5, 230);
    CGContextAddQuadCurveToPoint(ref, kScreenW/2-45, 205, kScreenW/2, 240);
    CGContextAddQuadCurveToPoint(ref, kScreenW/2+45, 205, kScreenW/2-2.5, 230);
    CGContextStrokePath(ref);
    
//    脖圈
//        CGContextAddEllipseInRect(ref, CGRectMake(70, 90, kScreenW - 140, kScreenW - 170));
    CGContextRestoreGState(ref);
    [[UIColor redColor] set];
    CGContextMoveToPoint(ref, 75, 240);    
    CGContextAddArc(ref, kScreenW/2, (kScreenW-170)/2+70, 130, M_PI_4*3.1, M_PI_4, 1);
    CGContextAddArc(ref, kScreenW/2, (kScreenW-170)/2+45, 144, M_PI_4*0.9, M_PI_4*3.1, 0);
    CGContextFillPath(ref);
    
//    铃铛    
    [[UIColor yellowColor]set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-10, 298, 20, 20));
    CGContextFillPath(ref);
    
    [[UIColor grayColor]set];
    CGContextAddEllipseInRect(ref, CGRectMake(kScreenW/2-10, 298, 20, 20));
    CGContextAddLineToPoint(ref, kScreenW/2-10, 308);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2-2, 308);
    CGContextAddLineToPoint(ref, kScreenW/2-2, 317);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2+2, 308);
    CGContextAddLineToPoint(ref, kScreenW/2+2, 317);
    CGContextStrokePath(ref);
    
//    胡须
    //左
    CGContextMoveToPoint(ref, kScreenW/2-20, 160);
    CGContextAddLineToPoint(ref, kScreenW/2-120, 140);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2-20, 168);
    CGContextAddLineToPoint(ref, kScreenW/2-125, 165);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2-20, 176);
    CGContextAddLineToPoint(ref, kScreenW/2-120, 196);
    CGContextStrokePath(ref);

    //右
    CGContextMoveToPoint(ref, kScreenW/2+13, 160);
    CGContextAddLineToPoint(ref, kScreenW/2+113, 140);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2+13, 168);
    CGContextAddLineToPoint(ref, kScreenW/2+118, 165);
    CGContextStrokePath(ref);
    
    CGContextMoveToPoint(ref, kScreenW/2+13, 176);
    CGContextAddLineToPoint(ref, kScreenW/2+113, 196);
    CGContextStrokePath(ref);
}

@end
