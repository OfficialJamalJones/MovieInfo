//
//  ObjCViewModel.h
//  MovieInfo
//
//  Created by Consultant on 1/10/23.
//

#ifndef ObjCViewModel_h
#define ObjCViewModel_h

//#import <Foundation/Foundation.h>
#import "ViewModel.swift"

@interface ObjCAPICall:NSObject

+(void)getData:(NSString*)urlString completion:(void (^) (Post array[]))completion;

@end

#endif /* ObjCViewModel_h */
