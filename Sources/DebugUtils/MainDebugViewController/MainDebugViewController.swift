//
//  File.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit
import ModuleServices

public class MainDebugViewController: ModulesViewController {
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: Bundle.module)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func createModules() {
        super.createModules()
        
        loadOptionModule()
        loadActionModule()
    }
    
    public override func setupStyle() {
        super.setupStyle()
        
        tableView?.tableFooterView = UIView(frame: .zero)
        tableView?.backgroundColor = .white
        view.backgroundColor = .white
        title = L10n.mainDebugViewControllerTitle
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigateToStorybookIfNeeded()
    }
}

// MARK: - Private Methods
private extension MainDebugViewController {
    func loadOptionModule() {
        let module = MainDebugViewOptionModule(tableView: self.tableView!)
        module.configure(defaultAccesory: .disclosureIndicator)
        appendModule(module)
        module.delegate = self
    }
    
    func loadActionModule() {
        
    }
    
    func navigateToStorybookIfNeeded() {}
}

// MARK: - DebugViewOptionModuleDelegate
extension MainDebugViewController: DebugViewOptionModuleDelegate {
    func debugViewOptionModule<T: DebugViewOptionRow, DebugViewOptionEnum>(_ module: DebugViewOptionModule<T>,
                                                                           didSelectOption option: DebugViewOptionEnum) {
        guard let option = option as? MainDebugViewOption else { return }
        
        switch option {
        case .Information:
            navigationController?.pushViewController(InformationDebugViewController(), animated: true)
        default:
            break
        }
    }
}
