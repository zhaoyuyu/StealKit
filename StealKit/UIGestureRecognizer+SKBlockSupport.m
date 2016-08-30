//
//  UIGestureRecognizer+SKBlockSupport.m
//  StealKit
//

#import <objc/runtime.h>
#import "UIGestureRecognizer+SKBlockSupport.h"

static const void *SKGestureRecognizerBlockKey = &SKGestureRecognizerBlockKey;
static const void *SKGestureRecognizerDelayKey = &SKGestureRecognizerDelayKey;
static const void *SKGestureRecognizerShouldHandleActionKey = &SKGestureRecognizerShouldHandleActionKey;

@interface UIGestureRecognizer (SKInternal)

@property (nonatomic, setter = sk_setShouldHandleAction:) BOOL sk_shouldHandleAction;

- (void)sk_handleAction:(UIGestureRecognizer *)recognizer;

@end

@implementation UIGestureRecognizer (SKBlockSupport)

+ (id)sk_recognizerWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block delay:(NSTimeInterval)delay
{
	return [[[self class] alloc] sk_initWithHandler:block delay:delay];
}

- (id)sk_initWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block delay:(NSTimeInterval)delay
{
	self = [self initWithTarget:self action:@selector(sk_handleAction:)];
	if (!self) return nil;

	self.sk_handler = block;
	self.sk_handlerDelay = delay;

	return self;
}

+ (id)sk_recognizerWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block
{
	return [self sk_recognizerWithHandler:block delay:0.0];
}

- (id)sk_initWithHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))block
{
	return (self = [self sk_initWithHandler:block delay:0.0]);
}

- (void)sk_handleAction:(UIGestureRecognizer *)recognizer
{
	void (^handler)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location) = recognizer.sk_handler;
	if (!handler) return;
	
	NSTimeInterval delay = self.sk_handlerDelay;
	CGPoint location = [self locationInView:self.view];
	void (^block)(void) = ^{
		if (!self.sk_shouldHandleAction) return;
		handler(self, self.state, location);
	};

	self.sk_shouldHandleAction = YES;

	if (!delay) {
		block();
		return;
	}

	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC));
	dispatch_after(popTime, dispatch_get_main_queue(), block);
}

- (void)sk_setHandler:(void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))handler
{
	objc_setAssociatedObject(self, SKGestureRecognizerBlockKey, handler, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UIGestureRecognizer *sender, UIGestureRecognizerState state, CGPoint location))sk_handler
{
	return objc_getAssociatedObject(self, SKGestureRecognizerBlockKey);
}

- (void)sk_setHandlerDelay:(NSTimeInterval)delay
{
	NSNumber *delayValue = delay ? @(delay) : nil;
	objc_setAssociatedObject(self, SKGestureRecognizerDelayKey, delayValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)sk_handlerDelay
{
	return [objc_getAssociatedObject(self, SKGestureRecognizerDelayKey) doubleValue];
}

- (void)sk_setShouldHandleAction:(BOOL)flag
{
	objc_setAssociatedObject(self, SKGestureRecognizerShouldHandleActionKey, @(flag), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL)sk_shouldHandleAction
{
	return [objc_getAssociatedObject(self, SKGestureRecognizerShouldHandleActionKey) boolValue];
}

- (void)sk_cancel
{
	self.sk_shouldHandleAction = NO;
}

@end
