//
//  ViewController.swift
//  Demo
//
//  Created by Hsiao, Wayne on 2019/11/29.
//

import UIKit

class ViewController: UIViewController {
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        assert(RunLoop.main == _runLoop, "RunLoop.main and _runLoop should identical.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func exitTapped(_ sender: Any) {
        exit(0)
    }
    
}

