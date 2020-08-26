//
//  SampleSampleInitializer.swift
//  ViperSample
//
//  Created by Shohei Nakagawa on 26/08/2020.
//  Copyright © 2020 never. All rights reserved.
//

import UIKit

class SampleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var sampleViewController: SampleViewController!

    override func awakeFromNib() {

        let configurator = SampleModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: sampleViewController)
    }

}
