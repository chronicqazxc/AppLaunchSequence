//
//  UIApplication+private.h
//  AppLaunchSequence
//
//  Created by Hsiao, Wayne on 2019/12/8.
//

#import <UIKit/UIKit.h>

#ifndef UIApplication_private_h
#define UIApplication_private_h

@interface UIApplication(private)
- (void)workspace:(__nullable id)workspace didCreateScene:(__nullable id)scene withTransitionContext:(__nullable id)context completion:(__nullable id)completion;
- (void)_connectUISceneFromFBSScene:(__nullable id)scene transitionContext:(__nullable id)context;
- (void)_run;
- (void)_compellApplicationLaunchToCompleteUnconditionally;
- (void)_runWithMainScene:(__nullable id)scene transitionContext:(__nullable id)context completion:(__nullable id)completion;
- (void)_callInitializationDelegatesWithActions:(__nullable id)delegate forCanvas:(__nullable id)canvas payload:(__nullable id)payload fromOriginatingProcess:(__nullable id)process;
@end

#endif /* UIApplication_private_h */
