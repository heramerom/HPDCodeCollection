//
//  Regex.m
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString(Regex)

- (BOOL)wasMatchRegex:(NSString *)regex
{
    return [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex] evaluateWithObject:self];
}

- (BOOL)wasMoneyFormmat
{
    return [self wasMatchRegex:@"^(([1-9]\\d{0,9})|0)(\\.\\d{1,2})?$"];
}

- (BOOL)wasEmailFormat
{
    return [self wasMatchRegex:@"^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"];
}


@end


@implementation NSString (MD5)

- (NSString*)MD5With32Byte{
    const char *cStr = [self UTF8String];
    unsigned char result[32];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (NSString*)MD5With16Byte{
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
