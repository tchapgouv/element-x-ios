// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum TchapL10n {
  /// Frequently Asked Questions
  internal static var commonFaq: String { return TchapL10n.tr("TchapLocalizable", "common_faq") }
  /// Legals
  internal static var commonLegal: String { return TchapL10n.tr("TchapLocalizable", "common_legal") }
  /// Privacy policy
  internal static var legalPrivacyPolicy: String { return TchapL10n.tr("TchapLocalizable", "legal_privacy_policy") }
  /// Terms of use
  internal static var legalTermsOfUse: String { return TchapL10n.tr("TchapLocalizable", "legal_terms_of_use") }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension TchapL10n {
  static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // Use preferredLocalizations to get a language that is in the bundle and the user's preferred list of languages.
    let languages = Bundle.overrideLocalizations ?? Bundle.app.preferredLocalizations

    for language in languages {
      if let translation = trIn(language, table, key, args) {
        return translation
      }
    }
    return Bundle.app.developmentLocalization.flatMap { trIn($0, table, key, args) } ?? key
  }

  private static func trIn(_ language: String, _ table: String, _ key: String, _ args: CVarArg...) -> String? {
    guard let bundle = Bundle.lprojBundle(for: language) else { return nil }
    let format = NSLocalizedString(key, tableName: table, bundle: bundle, comment: "")
    let translation = String(format: format, locale: Locale(identifier: language), arguments: args)
    guard translation != key else { return nil }
    return translation
  }
}

// swiftlint:enable all
