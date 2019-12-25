//
//  ViewController.m
//  ceshi
//
//  Created by dancer on 2019/12/13.
//  Copyright © 2019 earn. All rights reserved.
//

#import "ViewController.h"
#import "headerV.h"
#import "JJTableViewCell.h"
#import <Masonry.h>
#import<SystemConfiguration/CaptiveNetwork.h>
#import "JJBtn.h"
#import "UIImage+YZImage.h"

static NSString *cellId = @"JJTableViewCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong) headerV *headv;
@property (nonatomic , strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self setUI];
//    [self layout];
    
    
//    [self ssss];
//    [self ttt];
    
//    [self jjj];
//    [self hhhh];
    
    [self llll];
}

-(void)llll{
    
//    UIImage *image = [UIImage imageNamed:@"img_hxhy"];
//    CGFloat imageWidth = image.size.width;
//    CGFloat imageHeight = image.size.height;
//    UIImage *reziableImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(iamgeHeight*0.5, imageWidth*0.5,iamgeHeight*0.5 - 1 , imageWidth*0.5-1)];
    
//    UIImage *reziableImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(iamgeHeight*0.5, imageWidth*0.5,iamgeHeight*0.5 - 1 , imageWidth*0.5-1) resizingMode:1];
    
//    UIImage *reziableImage = [image stretchableImageWithLeftCapWidth:imageWidth*0.5 topCapHeight:imageHeight*0.5];
    
    
    UIImage *reziableImage = [UIImage reziableImageWithImageName:@"img_hxhy"];
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setBackgroundImage:reziableImage forState:(UIControlStateNormal)];
    btn.frame = CGRectMake(100, 100, 200, 100);
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    
}

-(void)jjj{
    
    JJBtn *btn = [JJBtn buttonWithType:(UIButtonTypeCustom)];
    
    [btn setImage:[UIImage imageNamed:@"jj"] forState:(UIControlStateNormal)];
    [btn setTitle:@"我是谁" forState:(UIControlStateNormal)];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 120);
    btn.backgroundColor = [UIColor orangeColor];
   
               

    [self.view addSubview:btn];
    
}

-(void)hhhh{
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"我是谁" forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:@"jj"] forState:(UIControlStateNormal)];
//    [btn setBackgroundImage:[UIImage imageNamed:@"jj"] forState:(UIControlStateNormal)];
//    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor greenColor];
    
//    [btn imageRectForContentRect:CGRectMake(0, 0, 100, 100)];
//    [btn titleRectForContentRect:CGRectMake(0, 100, 100, 20)];
    
     //    self.titleEdgeInsets = UIEdgeInsetsMake(20, 20, 0, 0);
                   
    //               btn.contentEdgeInsets = UIEdgeInsetsMake(-50, 0, 0, 0);
                   
//                   btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 50, 0);
//                   
            btn.titleEdgeInsets = UIEdgeInsetsMake(100, 0, 0, 0);
            btn.frame = CGRectMake(100, 100, 100, 120);
    [self.view addSubview:btn];
    
}



-(void)ttt{
    
    NSString *kk = [self ssid];
    
    NSLog(@"wifi %@",kk);
    
    
    
}


- (NSString *)ssid

{

    NSString *sidStr = @"";
    CFArrayRef ssidArray = CNCopySupportedInterfaces();
    if (ssidArray != nil) {
        CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(ssidArray, 0));
        if (myDict!=nil) {
            NSDictionary *dict = (NSDictionary*)CFBridgingRelease(myDict);
            sidStr = [dict valueForKey:@"SSID"];
        }
    }
    return sidStr;

}

    
-(void)ssss{
    
//    UIView *view = [[UIView alloc] init];
//    view.backgroundColor = [UIColor redColor];
//
//    [self.view addSubview:view];
    //
//
//    [view mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.left.right.mas_equalTo(self);
//       //        make.width.mas_equalTo(topView);
//       //        make.height.mas_equalTo(topView.mas_height).multipliedBy(0.5);
//               //设置宽高比例为7：1
//               make.width.mas_equalTo(view.mas_height).multipliedBy(100);
//               make.center.mas_equalTo(self.view);
//               //设置优先级
//               make.width.height.mas_equalTo(self.view).priorityLow();
//               make.width.height.lessThanOrEqualTo(self.view);
//    }];
    
    
    UIView *view1 = [[UIView alloc] init];
       view1.backgroundColor = [UIColor redColor];
       [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_offset(100);
        make.top.mas_equalTo(self.view.mas_top).mas_offset(100);
        make.width.mas_equalTo(view1.mas_height).multipliedBy(0.3);
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];
 
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view1.mas_bottom).mas_offset(100);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.width.mas_equalTo(view1.mas_width);
        make.height.mas_equalTo(view1.mas_height).dividedBy(2);
        
    }];
    
    
    UIView *lineV = [[UIView alloc] init];
    lineV.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lineV];
    
    [lineV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.view.mas_height);
        make.top.mas_equalTo(self.view.mas_top);
        make.width.mas_offset(1);
        make.left.mas_equalTo(self.view.mas_right).dividedBy(5);
        
    }];
    
    UIView *linev2 = [[UIView alloc] init];
    linev2.backgroundColor = [UIColor redColor];
    [self.view addSubview:linev2];
    
    [linev2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top);
        make.height.mas_equalTo(self.view.mas_height);
        make.width.mas_offset(1);
        make.left.mas_equalTo(self.view.mas_right).multipliedBy(0.5);
    }];
    
    UIView *lineV3 = [[UIView alloc] init];
    lineV3.backgroundColor = [UIColor greenColor];
    [self.view addSubview:lineV3];
    
    [lineV3 mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.mas_equalTo(self.view.mas_top);
       make.width.mas_offset(100);
        make.centerX.mas_equalTo(self.view.mas_centerX);
       make.height.mas_equalTo(lineV3.mas_width).dividedBy(2);

    }];
    
}

-(void)setUI{
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.headv];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%@",self.headv);
    
}
-(void)layout{
    self.headv.frame = CGRectMake(0, 0, self.view.frame.size.width, 100);
    self.tableView.frame =CGRectMake(0, 100, self.view.frame.size.width,self.view.frame.size.height - 100 );
}
#pragma  UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    JJTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:cellId owner:self options:nil] firstObject];
    }
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
//    }
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

#pragma mark -UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}


-(headerV *)headv{
    if (!_headv) {
        _headv = [[[NSBundle mainBundle] loadNibNamed:@"headerV" owner:self options:nil] firstObject];
        _headv.autoresizingMask = UIViewAutoresizingNone;
    }
    return _headv;
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:(UITableViewStylePlain)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
@end
