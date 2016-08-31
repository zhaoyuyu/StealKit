//
//  UIBarButtonItem+SKBlockSupport.m
//  StealKit
//

@import ObjectiveC.runtime;
#import "UIBarButtonItem+SKBlockSupport.h"

static const void *SKBarButtonItemBlockKey = &SKBarButtonItemBlockKey;

@interface UIBarButtonItem (SKInternal)

- (void)sk_handleAction:(UIBarButtonItem *)sender;

@end

@implementation UIBarButtonItem (SKBlockSupport)

- (id)sk_initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem handler:(void (^)(id sender))action
{
	self = [self initWithBarButtonSystemItem:systemItem target:self action:@selector(sk_handleAction:)];
	if (!self) return nil;

	objc_setAssociatedObject(self, SKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

- (id)sk_initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action
{
	self = [self initWithImage:image style:style target:self action:@selector(sk_handleAction:)];
	if (!self) return nil;

	objc_setAssociatedObject(self, SKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

- (id)sk_initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action
{
	self = [self initWithImage:image landscapeImagePhone:landscapeImagePhone style:style target:self action:@selector(sk_handleAction:)];
	if (!self) return nil;

	objc_setAssociatedObject(self, SKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

- (id)sk_initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style handler:(void (^)(id sender))action
{
	self = [self initWithTitle:title style:style target:self action:@selector(sk_handleAction:)];
	if (!self) return nil;

	objc_setAssociatedObject(self, SKBarButtonItemBlockKey, action, OBJC_ASSOCIATION_COPY_NONATOMIC);

	return self;
}

- (void)sk_handleAction:(UIBarButtonItem *)sender
{
	void (^block)(id) = objc_getAssociatedObject(self, SKBarButtonItemBlockKey);
	if (block) block(self);

}

@end
