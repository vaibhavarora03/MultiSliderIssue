//
//  ViewController.swift
//  MultiSliderIssue
//
//  Created by apple on 4/15/19.
//  Copyright © 2019 Vaibhav Arora. All rights reserved.
//

import UIKit
import MultiSlider

class ViewController: UIViewController {

    @IBOutlet weak var ms1: MultiSlider!
    @IBOutlet weak var ms2: MultiSlider!
    @IBOutlet weak var ms3: MultiSlider!
    @IBOutlet weak var ms4: MultiSlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateSliders()
    }

    func updateSliders(){
        setSliders(slider: ms1)
        setSliders(slider: ms2)
        setSliders(slider: ms3)
        setSliders(slider: ms4)
    }
    
    func setSliders(slider: MultiSlider){
        slider.orientation = .horizontal
        slider.minimumValue = CGFloat(0)
        slider.maximumValue = CGFloat(100)
        slider.thumbCount = 1
        slider.trackWidth = 2
        slider.snapStepSize = 1
        slider.showsThumbImageShadow = false
        slider.layoutSubviews()
        //        slider.valueLabelPosition = .bottom
        //        slider.isValueLabelRelative = true
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.outerTrackColor = #colorLiteral(red: 0.2711775303, green: 0.5228122473, blue: 0.8482171893, alpha: 1)
    }

}

