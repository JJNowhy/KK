//
//  IRCButton.h
//  fula
//
//  Created by Victor on 2019/8/31.
//  Copyright © 2019 ixiye company. All rights reserved.
//
#import <UIKit/UIKit.h>

/**
 按钮的样式
 
 - IRCButtonCustomStyleNomal:    普通样式
 - IRCButtonCustomStylePicTop:   图片在上文字在下
 - IRCButtonCustomStylePicLeft:  图片在左文字在右
 - IRCButtonCustomStylePicDown:  图片在下文字在上
 - IRCButtonCustomStylePicRight: 图片在右文字在左
 */
typedef NS_ENUM(NSUInteger, IRCButtonCustomStyle) {
    IRCButtonCustomStyleNomal = 0,
    IRCButtonCustomStylePicTop,
    IRCButtonCustomStylePicLeft,
    IRCButtonCustomStylePicDown,
    IRCButtonCustomStylePicRight,
};

@interface IRCButton : UIButton

/**
 自定义样式(nomal为系统原本的样式)
 */
@property (assign, nonatomic) IRCButtonCustomStyle irc_customstyle;
///自定义间距(nomal下无效)
@property (assign, nonatomic) CGFloat irc_customSpace;

@property (assign, nonatomic) NSDictionary *paramDic;


@end
