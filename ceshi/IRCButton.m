//
//  IRCButton.h
//  fula
//
//  Created by Victor on 2019/8/31.
//  Copyright © 2019 ixiye company. All rights reserved.
//
#import "IRCButton.h"

@implementation IRCButton

/**
 重新布局button的内容
 */
-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    switch (self.irc_customstyle) {
        case IRCButtonCustomStylePicTop:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsZero];
            
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;
            
            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;
            
            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width)*0.5;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height-labelFrame.size.height-self.irc_customSpace)*0.5;
            self.imageView.frame = imageFrame;
            
            labelFrame.origin.x = (self.frame.size.width-labelFrame.size.width)*0.5;;
            labelFrame.origin.y = imageFrame.origin.y+imageFrame.size.height+self.irc_customSpace;
            self.titleLabel.frame = labelFrame;
            
            break;
        }
        case IRCButtonCustomStylePicLeft:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;
            
            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;
            
            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width-labelFrame.size.width-self.irc_customSpace)*0.5;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height)*0.5;
            self.imageView.frame = imageFrame;
            
            labelFrame.origin.x = imageFrame.origin.x+imageFrame.size.width+self.irc_customSpace;
            labelFrame.origin.y = (self.frame.size.height-labelFrame.size.height)*0.5;
            self.titleLabel.frame = labelFrame;
            
            break;
        }
        case IRCButtonCustomStylePicDown:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;
            
            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;
            
//            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width)*0.5;
//            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height-labelFrame.size.height-self.irc_customSpace)*0.5;
//            self.imageView.frame = imageFrame;
//
//            labelFrame.origin.x = (self.frame.size.width-labelFrame.size.width)*0.5;;
//            labelFrame.origin.y = imageFrame.origin.y+imageFrame.size.height+self.irc_customSpace;
//
            labelFrame.origin.y = (self.frame.size.height-imageFrame.size.height-labelFrame.size.height-self.irc_customSpace)*0.5;
            labelFrame.origin.x = (self.frame.size.width-labelFrame.size.width)*0.5;
            self.titleLabel.frame = labelFrame;
            
            imageFrame.origin.y = labelFrame.origin.x+labelFrame.size.height+self.irc_customSpace;
            imageFrame.origin.x = (self.frame.size.width-imageFrame.size.width)*0.5;
            self.imageView.frame = imageFrame;
            break;
        }
        case IRCButtonCustomStylePicRight:
        {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;
            
            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;
            if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) {
                labelFrame.origin.x = 0;
            } else {
                labelFrame.origin.x = (self.frame.size.width-imageFrame.size.width-labelFrame.size.width-self.irc_customSpace)*0.5;
            }
            
            labelFrame.origin.y = (self.frame.size.height-labelFrame.size.height)*0.5;
            self.titleLabel.frame = labelFrame;
            
            imageFrame.origin.x = labelFrame.origin.x+labelFrame.size.width+self.irc_customSpace;
            imageFrame.origin.y = (self.frame.size.height-imageFrame.size.height)*0.5;
            self.imageView.frame = imageFrame;
            
            break;
        }
        default:
            break;
    }
}

@end
