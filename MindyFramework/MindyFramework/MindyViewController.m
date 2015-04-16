//
//  MindyViewController.m
//  MindyFramework
//
//  Created by Mindy on 15-4-16.
//  Copyright (c) 2015年 Mindy. All rights reserved.
//

#import "MindyViewController.h"

@interface MindyViewController (){
    UIImageView *_imgView;
}

@end

@implementation MindyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
    [self.view addSubview:_imgView];
    
    //访问bundle中的资源
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *imgPathURL = [bundle URLForResource:@"dear" withExtension:@"JPG"];
    NSData *data = [NSData dataWithContentsOfURL:imgPathURL];
    _imgView.image = [UIImage imageWithData:data];
}

-(void)setImage:(UIImage *)image{
    _imgView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
