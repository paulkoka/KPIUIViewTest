//
//  KPIMyView.m
//  KPIUIViewTest
//
//  Created by paul on 5/8/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "KPIMyView.h"



@implementation KPIMyView

int i = 0;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    _serialNumber = ++i;
    NSLog(@"initWithFrame View %d", _serialNumber);
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview {
    [super willMoveToSuperview:newSuperview];
      NSLog(@"willMoveToSuperview View %d", _serialNumber);
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
      NSLog(@"didMoveToSuperview View %d", _serialNumber);
}

- (void)awakeFromNib {
    [super awakeFromNib];
      NSLog(@"awakeFromNib View %d", _serialNumber);
}

- (void)willMoveToWindow:(UIWindow *)newWindow {
    [super willMoveToWindow:newWindow];
      NSLog(@"willMoveToWindow View %d", _serialNumber);
}

- (void)didMoveToWindow {
    [super didMoveToWindow];
      NSLog(@"didMoveToWindow View %d", _serialNumber);
}

- (void)updateConstraints {
    [super updateConstraints];
      NSLog(@"updateConstraints View %d", _serialNumber);
}

- (void)layoutSubviews {
    [super layoutSubviews];
      NSLog(@"layoutSubviews View %d", _serialNumber);
}

@end
