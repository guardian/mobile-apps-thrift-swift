/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public protocol Webview {

  ///
  /// - Returns: Int32
  /// - Throws: 
  func nativeVersionNumber() throws -> Int32

  ///
  /// - Returns: Int32
  /// - Throws: 
  func testThree() throws -> Int32

}

open class WebviewClient : TClient /* , Webview */ {

}

open class WebviewProcessor /* Webview */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Webview) throws -> Void]

  public var service: Webview

  public required init(service: Webview) {
    self.service = service
  }

}


