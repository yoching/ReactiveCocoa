//
//  UITextField+RACSignalSupport.m
//  ReactiveCocoa
//
//  Created by Josh Abernathy on 4/17/12.
//  Copyright (c) 2012 GitHub, Inc. All rights reserved.
//

#import "UITextField+RACSignalSupport.h"
#import "RACSignal.h"
#import "UIControl+RACSignalSupport.h"

@implementation UITextField (RACSignalSupport)

- (id<RACSignal>)rac_textSignal {
	return [[[self rac_signalForControlEvents:UIControlEventEditingChanged] startWith:self] map:^(UITextField *x) {
		return x.text;
	}];
}

@end
