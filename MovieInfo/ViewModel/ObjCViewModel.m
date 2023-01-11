//
//  ObjCViewModel.m
//  MovieInfo
//
//  Created by Consultant on 1/10/23.
//

#import <Foundation/Foundation.h>
#import "ObjCViewModel.h"
//#import "ViewModel.swift"

@implementation ObjCAPICall:NSObject

+(void)getData:(NSString*)urlString completion:(void (^) (Post array[])) completion {
    NSString *url = urlString;
        NSString* encodedUrl =
        [url stringByAddingPercentEscapesUsingEncoding:
         NSASCIIStringEncoding];
    NSLog(@"Encoded URL %@",encodedUrl);
}


@end
