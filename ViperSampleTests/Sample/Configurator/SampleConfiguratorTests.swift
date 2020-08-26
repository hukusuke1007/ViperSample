//
//  SampleSampleConfiguratorTests.swift
//  ViperSample
//
//  Created by Shohei Nakagawa on 26/08/2020.
//  Copyright © 2020 never. All rights reserved.
//

import XCTest

class SampleModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = SampleViewControllerMock()
        let configurator = SampleModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SampleViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SamplePresenter, "output is not SamplePresenter")

        let presenter: SamplePresenter = viewController.output as! SamplePresenter
        XCTAssertNotNil(presenter.view, "view in SamplePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in SamplePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is SampleRouter, "router is not SampleRouter")

        let interactor: SampleInteractor = presenter.interactor as! SampleInteractor
        XCTAssertNotNil(interactor.output, "output in SampleInteractor is nil after configuration")
    }

    class SampleViewControllerMock: SampleViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
