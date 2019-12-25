//
//  headerV.m
//  ceshi
//
//  Created by dancer on 2019/12/13.
//  Copyright © 2019 earn. All rights reserved.
//

#import "headerV.h"

@implementation headerV

-(void)awakeFromNib{
    
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor redColor];
    [self.ccBtn setTitle:@"全部" forState:(UIControlStateNormal)];
       [self.ccBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
       [self.ccBtn setImage:[UIImage imageNamed:@"ic_jt"] forState:(UIControlStateNormal)];
       self.ccBtn.irc_customstyle = IRCButtonCustomStylePicRight;
       self.ccBtn.irc_customSpace = 4;
}
@end
