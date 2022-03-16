//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit
import ModuleServices
import DeviceKit

class InformationDebugViewController: ModulesViewController {
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: Bundle.module)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupStyle() {
        super.setupStyle()
        
        tableView?.tableFooterView = UIView(frame: .zero)
        tableView?.backgroundColor = .white
        view.backgroundColor = .white
        title = L10n.informationDebugViewControllerTitle
    }
    
    override func createModules() {
        super.createModules()
        
        loadInfomationModule()
    }
}

// MARK: - Private Methods
private extension InformationDebugViewController {
    func loadInfomationModule() {
        guard let tableView = tableView else { return }
        let module = InformationModule(tableView: tableView)
        module.configure(info: information)
        appendModule(module)
    }
    
    var information: [InformationModuleRowDecorator] {
        [
            .init(key: L10n.informationModuleVersion, value: AppInformationMetadata().fullVersionRepresentation),
            .init(key: L10n.informationModuleDescription, value: String(Device.current.description)),
            .init(key: L10n.informationModuleName, value: Device.current.name ?? .empty),
            .init(key: L10n.informationModuleModel, value: Device.current.model ?? .empty),
            .init(key: L10n.informationModuleLocalizedModel, value: Device.current.localizedModel ?? .empty),
            .init(key: L10n.informationModuleIdentifier, value: Device.identifier),
            .init(key: L10n.informationModuleSystemName, value: Device.current.systemName ?? .empty),
            .init(key: L10n.informationModuleSystemVersion, value: Device.current.systemVersion ?? .empty),
            .init(key: L10n.informationModuleScreenInches, value: String(Device.current.diagonal)),
            .init(key: L10n.informationModulePPI, value: String(Device.current.ppi ?? -1)),
            .init(key: L10n.informationModuleBrightness, value: String(Device.current.screenBrightness)),
            .init(key: L10n.informationModuleBatteryLevel, value: String(Device.current.batteryLevel ?? -1)),
            .init(key: L10n.informationModuleSimulator, value: String(Device.current.isSimulator)),
            .init(key: L10n.informationModuleTouchID, value: String(Device.current.isTouchIDCapable)),
            .init(key: L10n.informationModuleFaceID, value: String(Device.current.isFaceIDCapable)),
            .init(key: L10n.informationModuleBiometricSensor, value: String(Device.current.hasBiometricSensor)),
        ]
    }
}
