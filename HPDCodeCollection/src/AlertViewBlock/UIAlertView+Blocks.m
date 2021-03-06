
//
//  UIAlertView+Blocks.m
//  UIKitCategoryAdditions
//

#import "UIAlertView+Blocks.h"

static DismissBlock _dismissBlock;
static CancelBlock _cancelBlock;

@implementation UIAlertView (Blocks)

+ (UIAlertView*) showAlertViewWithTitle:(NSString*) title
                                message:(NSString*) message
                      cancelButtonTitle:(NSString*) cancelButtonTitle
                      otherButtonTitles:(NSArray*) otherButtons
                              onDismiss:(DismissBlock) dismissed
                               onCancel:(CancelBlock) cancelled {
    
    _cancelBlock  = [cancelled copy];
    
    _dismissBlock  = [dismissed copy];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:[self self]
                                          cancelButtonTitle:cancelButtonTitle
                                          otherButtonTitles:nil];
    
    for(NSString *buttonTitle in otherButtons)
        [alert addButtonWithTitle:buttonTitle];
    
    [alert show];
    return alert;
}

+ (void)alertView:(UIAlertView*) alertView didDismissWithButtonIndex:(NSInteger) buttonIndex {
    
	if(buttonIndex == [alertView cancelButtonIndex]) {
        
		if (_cancelBlock) {
            		_cancelBlock();
            		_cancelBlock = nil;
        	}
	}
    else {
        if (_dismissBlock) {
            _dismissBlock(buttonIndex - 1);
            _dismissBlock = nil;
        }
    }  
}

+ (void) showMessage:(NSString*) message
{
    [UIAlertView showAlertViewWithTitle:@"Tip" message:message cancelButtonTitle:@"confirm" otherButtonTitles:nil onDismiss:^(NSInteger buttonIndex) {} onCancel:^{}];
}

+ (void)showMessage:(NSString *)message withCancle:(CancelBlock)cancle
{
    [UIAlertView showAlertViewWithTitle:@"Tip" message:message cancelButtonTitle:@"confirm" otherButtonTitles:nil onDismiss:^(NSInteger buttonIndex) {} onCancel:cancle];
}



@end
