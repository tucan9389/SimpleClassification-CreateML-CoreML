//
//  ViewController.swift
//  MyClassificationApp
//
//  Created by GwakDoyoung on 11/11/2018.
//  Copyright © 2018 tucan9389. All rights reserved.
//

import UIKit
import Vision

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image: UIImage? = UIImage(named: "arduino")
        
        let model = ImageClassifier()
//        if let prediction = try? model.prediction(image: image) {
//            return prediction.type
//        }
    }


}

