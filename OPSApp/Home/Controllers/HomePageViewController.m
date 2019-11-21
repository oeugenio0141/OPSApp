//
//  HomePageViewController.m
//  OPSApp
//
//  Created by OPSolutions on 20/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "HomePageViewController.h"
#import "HomeViewController.h"

@interface HomePageViewController (){
    NSArray *devices;
}

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    devices = @[@"1carousel", @"2carousel", @"3carousel"];
    
    self.dataSource = self;
    
    HomeViewController *initialVC = (HomeViewController *)[self viewControllerAtIndex:0];
    NSArray *viewControllers = [NSArray arrayWithObject:initialVC];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
}

- (UIViewController *)viewControllerAtIndex: (NSUInteger)index{
    HomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    homeViewController.strImage = devices[index];
    homeViewController.pageIndex = index;
    return homeViewController;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index = ((HomeViewController *) viewController).pageIndex;
        if (index == 0 || index == NSNotFound) {
            return nil;
        }
        index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    NSUInteger index = ((HomeViewController *) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    index++;
    
    if (index == devices.count){
        index = 0;

    }
    
    
    return [self viewControllerAtIndex:index];
}



@end
