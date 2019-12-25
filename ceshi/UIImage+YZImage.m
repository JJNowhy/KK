//
//  UIImage+YZImage.m
//  ceshi
//
//  Created by dancer on 2019/12/23.
//  Copyright © 2019 earn. All rights reserved.
//

#import "UIImage+YZImage.h"

@implementation UIImage (YZImage)

+(instancetype)reziableImageWithImageName:(NSString *)imageName{
    
    UIImage *image = [UIImage imageNamed:imageName];
    CGFloat imageWidth = image.size.width;
    CGFloat imageHeight = image.size.height;
    
    return [image stretchableImageWithLeftCapWidth:imageWidth*0.5 topCapHeight:imageHeight*0.5];
    
}

@end
