//
//  SwiftARViewController.swift
//  ARToolKit5iOS
//
//  Created by Ruslan Musagitov on 05/05/16.
//
//

import UIKit

class SwiftARViewController: ARViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.extendedLayoutIncludesOpaqueBars = true
        
        // This will be overlaid with the actual AR view.
        var irisImage = ""
        if (UI_USER_INTERFACE_IDIOM() == .Pad) {
            irisImage = "Iris-iPad.png"
        }  else {
            let result = UIScreen.mainScreen().bounds.size
            if (result.height == 568) {
                irisImage = "Iris-568h.png"; // iPhone 5, iPod touch 5th Gen, etc.
            } else { // result.height == 480
                irisImage = "Iris.png";
            }
        }
        let irisView = UIImageView(image: UIImage(named: irisImage)!)
        irisView.userInteractionEnabled = true
        self.view = irisView
    }
}
