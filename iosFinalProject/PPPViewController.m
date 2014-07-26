//
//  PPPViewController.m
//  iosFinalProject
//
//  Created by User1 on 2014-07-25.
//  Copyright (c) 2014 Lambton. All rights reserved.
//

#import "PPPViewController.h"

@interface PPPViewController ()

@end

@implementation PPPViewController
int i = 0;
int j = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage* imgA = [UIImage imageNamed:@"1.jpg"];
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
    [imgA drawInRect:CGRectMake(0, 0, 100, 100)];
    UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    _image1.image = im2;
    _image1.contentMode = UIViewContentModeCenter;
    
    UIImage* imgB = [UIImage imageNamed:@"2.jpg"];
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
    [imgB drawInRect:CGRectMake(0, 0, 100, 100)];
    UIImage* im1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    _image2.image = im1;
    _image2.contentMode = UIViewContentModeCenter;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchImage:(id)sender {
    i=i+1;
    j=i%2;
    NSString* s1 = @"1.jpg";
    NSString* s2 = @"2.jpg";
    if(j==0){
        
        s1 = @"2.jpg";
        s2 = @"1.jpg";
        UIImage* imgA = [UIImage imageNamed:s1];
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
        [imgA drawInRect:CGRectMake(0, 0, 100, 100)];
        UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _image1.image = im2;
        _image1.contentMode = UIViewContentModeCenter;
        
        UIImage* imgB = [UIImage imageNamed:s2];
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
        [imgB drawInRect:CGRectMake(0, 0, 100, 100)];
        UIImage* im1 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _image2.image = im1;
        _image2.contentMode = UIViewContentModeCenter;
        
        
        
    }
    else{
        UIImage* imgA = [UIImage imageNamed:s1];
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
        [imgA drawInRect:CGRectMake(0, 0, 100, 100)];
        UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _image1.image = im2;
        _image1.contentMode = UIViewContentModeCenter;
        
        UIImage* imgB = [UIImage imageNamed:s2];
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), YES, 0.0);
        [imgB drawInRect:CGRectMake(0, 0, 100, 100)];
        UIImage* im1 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        _image2.image = im1;
        _image2.contentMode = UIViewContentModeCenter;
        
        
    }
}

@end