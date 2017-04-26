//
//  ViewController.h
//  Practice_ScrollView
//
//  Created by YU-CHEN, LIN on 26/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@end

