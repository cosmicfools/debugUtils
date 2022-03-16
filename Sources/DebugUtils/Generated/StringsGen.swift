// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Information
  internal static let informationDebugViewControllerTitle = L10n.tr("Localizable", "InformationDebugViewController::Title")
  /// Battery Level
  internal static let informationModuleBatteryLevel = L10n.tr("Localizable", "InformationModule::Battery Level")
  /// Biometric Sensor
  internal static let informationModuleBiometricSensor = L10n.tr("Localizable", "InformationModule::BiometricSensor")
  /// Brightness
  internal static let informationModuleBrightness = L10n.tr("Localizable", "InformationModule::Brightness")
  /// Description
  internal static let informationModuleDescription = L10n.tr("Localizable", "InformationModule::Description")
  /// FaceID
  internal static let informationModuleFaceID = L10n.tr("Localizable", "InformationModule::FaceID")
  /// Identifier
  internal static let informationModuleIdentifier = L10n.tr("Localizable", "InformationModule::Identifier")
  /// Localized Model
  internal static let informationModuleLocalizedModel = L10n.tr("Localizable", "InformationModule::LocalizedModel")
  /// Model
  internal static let informationModuleModel = L10n.tr("Localizable", "InformationModule::Model")
  /// Name
  internal static let informationModuleName = L10n.tr("Localizable", "InformationModule::Name")
  /// PPI
  internal static let informationModulePPI = L10n.tr("Localizable", "InformationModule::PPI")
  /// ScreenInches
  internal static let informationModuleScreenInches = L10n.tr("Localizable", "InformationModule::ScreenInches")
  /// Simulator
  internal static let informationModuleSimulator = L10n.tr("Localizable", "InformationModule::Simulator")
  /// SystemName
  internal static let informationModuleSystemName = L10n.tr("Localizable", "InformationModule::SystemName")
  /// SystemVersion
  internal static let informationModuleSystemVersion = L10n.tr("Localizable", "InformationModule::SystemVersion")
  /// Device Information
  internal static let informationModuleTitle = L10n.tr("Localizable", "InformationModule::Title")
  /// TouchID
  internal static let informationModuleTouchID = L10n.tr("Localizable", "InformationModule::TouchID")
  /// App. Version
  internal static let informationModuleVersion = L10n.tr("Localizable", "InformationModule::Version")
  /// Main Debug
  internal static let mainDebugViewControllerTitle = L10n.tr("Localizable", "MainDebugViewController::Title")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
