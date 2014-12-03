//
//  Regex.h
//  HPDCodeCollection
//
//  Created by HePanDai on 14/12/3.
//  Copyright (c) 2014年 heramerom. All rights reserved.
//

#import <Foundation/Foundation.h>

// regrex

@interface NSString(Regex)

- (BOOL)wasMatchRegex:(NSString *)regex;

- (BOOL)wasMoneyFormmat;

- (BOOL)wasEmailFormat;

@end


// md5
#import <CommonCrypto/CommonDigest.h>
@interface NSString (MD5)

/**
 *  md5 encripy use 16 bytes
 *
 *  @return the encripyed string
 */
-(NSString*)MD5With32Byte;

/**
 *  md5 encripy use 32 bytes
 *
 *  @return the encripyed string
 */
-(NSString*)MD5With16Byte;

@end
