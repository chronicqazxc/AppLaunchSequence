//
//  MyApplication.swift
//  Demo
//
//  Created by Hsiao, Wayne on 2019/12/8.
//

import UIKit

class MyApplication: UIApplication {
    
    override init() {
        super.init()
    }
    
    override func _connectUIScene(fromFBSScene scene: Any?, transitionContext context: Any?) {
        super._connectUIScene(fromFBSScene: scene, transitionContext: context)
    }
    
    override func workspace(_ workspace: Any?, didCreateScene scene: Any?, withTransitionContext transitionContext: Any?, completion: Any?) {
        super.workspace(workspace, didCreateScene: scene, withTransitionContext: transitionContext, completion: completion)
    }
    
    override func _run() {
        print("!@#")
        super._run()
    }
    
    override func _compellApplicationLaunchToCompleteUnconditionally() {
        super._compellApplicationLaunchToCompleteUnconditionally()
    }
    
    override func _run(withMainScene scene: Any?, transitionContext context: Any?, completion: Any?) {
        super._run(withMainScene: scene, transitionContext: context, completion: completion)
    }
    
    override func _callInitializationDelegates(withActions delegate: Any?, forCanvas canvas: Any?, payload: Any?, fromOriginatingProcess process: Any?) {
        super._callInitializationDelegates(withActions: delegate, forCanvas: canvas, payload: payload, fromOriginatingProcess: process)
    }
    
    override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)
    }
}
