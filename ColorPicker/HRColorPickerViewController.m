//
//  HRColorPickerViewController.m
//  HRColorPicker
//
//  Created by Bogdan Iusco on 11/05/15.
//  Copyright (c) 2015 Hayashi Ryota. All rights reserved.
//

#import "HRColorPickerViewController.h"
#import "HRColorPickerView.h"
#import "HRColorInfoView.h"

@interface HRColorPickerViewController ()

@property (nonatomic, strong) HRColorPickerView *colorPickerView;

@end

@implementation HRColorPickerViewController

#pragma mark - UIViewController methods

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.colorPickerView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.colorPickerView.frame = self.view.bounds;
}

#pragma mark - Actions

- (void)HR_selectedColorHasChanged:(id)sender {
    if (self.colorChangedCallback) {
        UIColor *color = self.colorPickerView.colorInfoView.color;
        self.colorChangedCallback(color);
    }
}

#pragma mark - Property methods

- (HRColorPickerView *)colorPickerView {
    if (!_colorPickerView) {
        _colorPickerView = [[HRColorPickerView alloc] initWithFrame:self.view.bounds];
        [_colorPickerView addTarget:self
                             action:@selector(HR_selectedColorHasChanged:)
                   forControlEvents:UIControlEventValueChanged];
    }
    return _colorPickerView;
}

@end
