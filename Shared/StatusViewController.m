//
//  StatusViewController.m
//  StockList Demo for iOS
//
// Copyright 2013 Weswit Srl
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "StatusViewController.h"
#import "StatusView.h"
#import "Constants.h"


@implementation StatusViewController


#pragma mark -
#pragma mark Initialization

- (id) init {
	if (self = [super init]) {
		self.title= @"Status";
	}
	
	return self;
}

- (void) dealloc {
	[super dealloc];
}


#pragma mark -
#pragma mark Methods of UIViewController

- (void) loadView {
    BOOL preiOS7= (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1);
	NSArray *niblets= [[NSBundle mainBundle] loadNibNamed:(preiOS7 ? DEVICE_XIB(@"StatusView") : DEVICE_XIB(@"StatusView_iOS7")) owner:self options:NULL];
	_statusView= (StatusView *) [niblets lastObject];
	
	self.view= _statusView;
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (BOOL) shouldAutorotate {
	return YES;
}

- (NSUInteger) supportedInterfaceOrientations {
	return UIInterfaceOrientationMaskAll;
}


@end
