//
//  HRColorPickerViewController.h
//  HRColorPicker
//
//  Created by Bogdan Iusco on 11/05/15.
//  Copyright (c) 2015 Hayashi Ryota. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HRColorPickerView;

@interface HRColorPickerViewController : UIViewController

@property (nonatomic, strong, readonly) HRColorPickerView *colorPickerView;
@property (nonatomic, copy) void(^colorChangedCallback)(UIColor *newColor);

@end
