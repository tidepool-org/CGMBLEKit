//
//  TransmitterSettingsNavigationController.swift
//  CGMBLEKitUI
//
//  Created by Nathaniel Hamming on 2021-01-15.
//  Copyright © 2021 LoopKit Authors. All rights reserved.
//

import UIKit
import HealthKit
import LoopKit
import LoopKitUI

class TransmitterSettingsNavigationController: SettingsNavigationViewController, GlucoseUnitObserver {

    private var rootViewController: TransmitterSettingsViewController

    init(rootViewController: TransmitterSettingsViewController) {
        self.rootViewController = rootViewController
        super.init(rootViewController: rootViewController)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func glucoseUnitDidChange(to glucoseUnit: HKUnit) {
        rootViewController.glucoseUnitDidChange(to: glucoseUnit)
    }
}
