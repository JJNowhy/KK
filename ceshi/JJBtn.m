//
//  JJBtn.m
//  ceshi
//
//  Created by dancer on 2019/12/21.
//  Copyright © 2019 earn. All rights reserved.
//

#import "JJBtn.h"

@implementation JJBtn

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.titleLabel.backgroundColor = [UIColor grayColor];
        self.imageView.backgroundColor = [UIColor redColor];
            
    }
    
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat with = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    self.imageView.frame = CGRectMake(0, 0, with, with);
    self.titleLabel.frame = CGRectMake(0, with, with, height - with);

}
-(CGRect)titleRectForContentRect:(CGRect)contentRect{

    return CGRectMake(0, 100, 100, 20);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{

    return CGRectMake(0, 0, 100, 100);
}


@end
