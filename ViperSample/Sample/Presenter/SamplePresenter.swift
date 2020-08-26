//
//  SampleSamplePresenter.swift
//  ViperSample
//
//  Created by Shohei Nakagawa on 26/08/2020.
//  Copyright © 2020 never. All rights reserved.
//

class SamplePresenter: SampleModuleInput, SampleViewOutput, SampleInteractorOutput {

    weak var view: SampleViewInput!
    var interactor: SampleInteractorInput!
    var router: SampleRouterInput!

    func viewIsReady() {

    }
}
