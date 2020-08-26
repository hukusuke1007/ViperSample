//
//  SampleSampleViewController.swift
//  ViperSample
//
//  Created by Shohei Nakagawa on 26/08/2020.
//  Copyright © 2020 never. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController, SampleViewInput {

    var output: SampleViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: SampleViewInput
    func setupInitialState() {
    }
}
