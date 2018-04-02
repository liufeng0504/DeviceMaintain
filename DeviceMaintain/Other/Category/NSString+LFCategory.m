//
//  NSString+LFCategory.m
//

#import "NSString+LFCategory.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (LFCategory)

#pragma mark -
#pragma mark - md5加密
- (NSString *)md5Encoded
{
    if(self == nil || self.length == 0)
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (CC_LONG)strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return [NSString stringWithString:outputString];
}

@end