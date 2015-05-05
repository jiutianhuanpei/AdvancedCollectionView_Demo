//
//  RootViewController.m
//  AdvancedCollectionView_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "RootViewController.h"
#import <AAPLCollectionViewGridLayout.h>
#import "SHBCollectionController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"开始Advanced之旅" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 200, 30);
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(clickedBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)clickedBtn {
    AAPLCollectionViewGridLayout *layout = [[AAPLCollectionViewGridLayout alloc] init];
    
    SHBCollectionController *shbVC = [[SHBCollectionController alloc] initWithCollectionViewLayout:layout];
    [self presentViewController:shbVC animated:YES completion:nil];
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
