//
//  SampleSampleConfigurator.swift
//  ViperSample
//
//  Created by Shohei Nakagawa on 26/08/2020.
//  Copyright © 2020 never. All rights reserved.
//

import UIKit

class SampleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SampleViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SampleViewController) {

        let router = SampleRouter()

        let presenter = SamplePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SampleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
