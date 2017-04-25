//
//  ViewController.m
//  Practice_ScrollView
//
//  Created by YU-CHEN, LIN on 26/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                            0,
                                                            _scrollView.frame.size.width,
                                                            _scrollView.frame.size.height)];
    view.backgroundColor = [UIColor redColor];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(_scrollView.frame.size.width,
                                                             0,
                                                             _scrollView.frame.size.width,
                                                             _scrollView.frame.size.height)];
    view2.backgroundColor = [UIColor blueColor];
    
    _scrollView.contentSize = CGSizeMake(view.bounds.size.width * 2, view.bounds.size.height);
    _scrollView.pagingEnabled = YES;
    
    _scrollView.delegate = self;
    [_scrollView addSubview:view];
    [_scrollView addSubview:view2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSInteger currentPage = ((scrollView.contentOffset.x - scrollView.frame.size.width / 2) / scrollView.frame.size.width) + 1;
    NSLog(@"currentPage = %ld", currentPage);
    [_pageControl setCurrentPage:currentPage];
}

@end
