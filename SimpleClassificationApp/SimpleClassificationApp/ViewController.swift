//
//  ViewController.swift
//  SimpleClassificationApp
//
//  Created by GwakDoyoung on 11/11/2018.
//  Copyright © 2018 tucan9389. All rights reserved.
//

import UIKit
import Vision

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    func predict() {
        guard let image: UIImage = UIImage(named: "arduino"),
            let pixelBuffer: CVPixelBuffer = image.pixelBuffer(width: Int(image.size.width),
                                                                height: Int(image.size.height))
            else { return }
        
        // create model
        let model = ImageClassifier()
        
        // predict
        if let result = try? model.prediction(image: pixelBuffer) {
            let predictedLabel = result.classLabel
            let confidence = result.classLabelProbs[result.classLabel] ?? 0.0
            label.text = "\(predictedLabel), \(confidence)"
        }
    }
}

