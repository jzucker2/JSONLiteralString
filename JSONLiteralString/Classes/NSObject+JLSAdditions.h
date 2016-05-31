//
//  NSObject+JLSAdditions.h
//  Pods
//
//  Created by Jordan Zucker on 5/31/16.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (JLSAdditions)

- (NSString *)JLS_literalString;
- (NSString *)JLS_unformattedLiteralString;
- (NSString *)JLS_formattedLiteralString;
//- (NSString *)JLS_literalWrap;

@end
