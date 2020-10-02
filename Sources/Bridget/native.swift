/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public final class Rect {

  public var x: Double

  public var y: Double

  public var height: Double

  public var width: Double


  public init(x: Double, y: Double, height: Double, width: Double) {
    self.x = x
    self.y = y
    self.height = height
    self.width = width
  }

}

public final class AdSlot {

  public var rect: Rect

  public var targetingParams: TMap<String, String>?


  public init(rect: Rect) {
    self.rect = rect
  }

  public init(rect: Rect, targetingParams: TMap<String, String>?) {
    self.rect = rect
    self.targetingParams = targetingParams
  }

}

public final class Topic {

  public var id: String

  public var displayName: String

  public var type: String


  public init(id: String, displayName: String, type: String) {
    self.id = id
    self.displayName = displayName
    self.type = type
  }

}

public final class Image {

  public var url: String

  public var width: Double

  public var height: Double

  public var caption: String?

  public var credit: String?


  public init(url: String, width: Double, height: Double) {
    self.url = url
    self.width = width
    self.height = height
  }

  public init(url: String, width: Double, height: Double, caption: String?, credit: String?) {
    self.url = url
    self.width = width
    self.height = height
    self.caption = caption
    self.credit = credit
  }

}

public final class Epic {

  public var title: String

  public var body: String

  public var firstButton: String

  public var secondButton: String?


  public init(title: String, body: String, firstButton: String) {
    self.title = title
    self.body = body
    self.firstButton = firstButton
  }

  public init(title: String, body: String, firstButton: String, secondButton: String?) {
    self.title = title
    self.body = body
    self.firstButton = firstButton
    self.secondButton = secondButton
  }

}

public final class MaybeEpic {

  public var epic: Epic?


  public init() { }
  public init(epic: Epic?) {
    self.epic = epic
  }

}

public final class VideoSlot {

  public var rect: Rect

  public var videoId: String

  public var posterUrl: String

  public var duration: Int32?


  public init(rect: Rect, videoId: String, posterUrl: String) {
    self.rect = rect
    self.videoId = videoId
    self.posterUrl = posterUrl
  }

  public init(rect: Rect, videoId: String, posterUrl: String, duration: Int32?) {
    self.rect = rect
    self.videoId = videoId
    self.posterUrl = posterUrl
    self.duration = duration
  }

}

public final class MetricPaint {

  public var time: Double


  public init(time: Double) {
    self.time = time
  }

}

public final class MetricFont {

  public var duration: Double

  public var size: Int32?

  public var name: String?


  public init(duration: Double) {
    self.duration = duration
  }

  public init(duration: Double, size: Int32?, name: String?) {
    self.duration = duration
    self.size = size
    self.name = name
  }

}

public enum Metric {

  case firstPaint(val: MetricPaint)

  case firstContentfulPaint(val: MetricPaint)

  case font(val: MetricFont)
}

public protocol Environment {

  ///
  /// - Returns: String
  /// - Throws: 
  func nativeThriftPackageVersion() throws -> String

}

open class EnvironmentClient : TClient /* , Environment */ {

}

public protocol EnvironmentAsync {

  ///
  ///   - completion: Result<String, Error> wrapping return and following Exceptions: 
  func nativeThriftPackageVersion(completion: @escaping (Result<String, Error>) -> Void)

}

open class EnvironmentProcessor /* Environment */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Environment) throws -> Void]

  public var service: Environment

  public required init(service: Environment) {
    self.service = service
  }

}

open class EnvironmentProcessorAsync /* Environment */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, EnvironmentAsync) throws -> Void]

  public var service: EnvironmentAsync

  public required init(service: EnvironmentAsync) {
    self.service = service
  }

}

public protocol Commercial {

  ///
  /// - Parameters:
  ///   - adSlots: 
  /// - Throws: 
  func insertAdverts(adSlots: TList<AdSlot>) throws

  ///
  /// - Parameters:
  ///   - adSlots: 
  /// - Throws: 
  func updateAdverts(adSlots: TList<AdSlot>) throws

}

open class CommercialClient : TClient /* , Commercial */ {

}

public protocol CommercialAsync {

  ///
  /// - Parameters:
  ///   - adSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func insertAdverts(adSlots: TList<AdSlot>, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - adSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func updateAdverts(adSlots: TList<AdSlot>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class CommercialProcessor /* Commercial */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Commercial) throws -> Void]

  public var service: Commercial

  public required init(service: Commercial) {
    self.service = service
  }

}

open class CommercialProcessorAsync /* Commercial */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, CommercialAsync) throws -> Void]

  public var service: CommercialAsync

  public required init(service: CommercialAsync) {
    self.service = service
  }

}

public protocol Acquisitions {

  ///
  /// - Throws: 
  func launchFrictionScreen() throws

  ///
  /// - Returns: MaybeEpic
  /// - Throws: 
  func getEpics() throws -> MaybeEpic

  ///
  /// - Throws: 
  func epicSeen() throws

}

open class AcquisitionsClient : TClient /* , Acquisitions */ {

}

public protocol AcquisitionsAsync {

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func launchFrictionScreen(completion: @escaping (Result<Void, Error>) -> Void)

  ///
  ///   - completion: Result<MaybeEpic, Error> wrapping return and following Exceptions: 
  func getEpics(completion: @escaping (Result<MaybeEpic, Error>) -> Void)

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func epicSeen(completion: @escaping (Result<Void, Error>) -> Void)

}

open class AcquisitionsProcessor /* Acquisitions */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Acquisitions) throws -> Void]

  public var service: Acquisitions

  public required init(service: Acquisitions) {
    self.service = service
  }

}

open class AcquisitionsProcessorAsync /* Acquisitions */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, AcquisitionsAsync) throws -> Void]

  public var service: AcquisitionsAsync

  public required init(service: AcquisitionsAsync) {
    self.service = service
  }

}

public protocol Notifications {

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func follow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func unfollow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func isFollowing(topic: Topic) throws -> Bool

}

open class NotificationsClient : TClient /* , Notifications */ {

}

public protocol NotificationsAsync {

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func follow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func unfollow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isFollowing(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

}

open class NotificationsProcessor /* Notifications */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Notifications) throws -> Void]

  public var service: Notifications

  public required init(service: Notifications) {
    self.service = service
  }

}

open class NotificationsProcessorAsync /* Notifications */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, NotificationsAsync) throws -> Void]

  public var service: NotificationsAsync

  public required init(service: NotificationsAsync) {
    self.service = service
  }

}

public protocol User {

  ///
  /// - Returns: Bool
  /// - Throws: 
  func isPremium() throws -> Bool

  ///
  /// - Parameters:
  ///   - articleIds: 
  /// - Returns: TList<String>
  /// - Throws: 
  func filterSeenArticles(articleIds: TList<String>) throws -> TList<String>

  ///
  /// - Returns: Bool
  /// - Throws: 
  func doesCcpaApply() throws -> Bool

  ///
  /// - Throws: 
  func testFunction() throws

}

open class UserClient : TClient /* , User */ {

}

public protocol UserAsync {

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isPremium(completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - articleIds: 
  ///   - completion: Result<TList<String>, Error> wrapping return and following Exceptions: 
  func filterSeenArticles(articleIds: TList<String>, completion: @escaping (Result<TList<String>, Error>) -> Void)

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func doesCcpaApply(completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func testFunction(completion: @escaping (Result<Void, Error>) -> Void)

}

open class UserProcessor /* User */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, User) throws -> Void]

  public var service: User

  public required init(service: User) {
    self.service = service
  }

}

open class UserProcessorAsync /* User */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, UserAsync) throws -> Void]

  public var service: UserAsync

  public required init(service: UserAsync) {
    self.service = service
  }

}

public protocol Gallery {

  ///
  /// - Parameters:
  ///   - images: 
  ///   - selectedIndex: 
  ///   - articleTitle: 
  /// - Throws: 
  func launchSlideshow(images: TList<Image>, selectedIndex: Int32, articleTitle: String) throws

}

open class GalleryClient : TClient /* , Gallery */ {

}

public protocol GalleryAsync {

  ///
  /// - Parameters:
  ///   - images: 
  ///   - selectedIndex: 
  ///   - articleTitle: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func launchSlideshow(images: TList<Image>, selectedIndex: Int32, articleTitle: String, completion: @escaping (Result<Void, Error>) -> Void)

}

open class GalleryProcessor /* Gallery */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Gallery) throws -> Void]

  public var service: Gallery

  public required init(service: Gallery) {
    self.service = service
  }

}

open class GalleryProcessorAsync /* Gallery */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, GalleryAsync) throws -> Void]

  public var service: GalleryAsync

  public required init(service: GalleryAsync) {
    self.service = service
  }

}

public protocol Videos {

  ///
  /// - Parameters:
  ///   - videoSlots: 
  /// - Throws: 
  func insertVideos(videoSlots: TList<VideoSlot>) throws

  ///
  /// - Parameters:
  ///   - videoSlots: 
  /// - Throws: 
  func updateVideos(videoSlots: TList<VideoSlot>) throws

}

open class VideosClient : TClient /* , Videos */ {

}

public protocol VideosAsync {

  ///
  /// - Parameters:
  ///   - videoSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func insertVideos(videoSlots: TList<VideoSlot>, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - videoSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func updateVideos(videoSlots: TList<VideoSlot>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class VideosProcessor /* Videos */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Videos) throws -> Void]

  public var service: Videos

  public required init(service: Videos) {
    self.service = service
  }

}

open class VideosProcessorAsync /* Videos */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, VideosAsync) throws -> Void]

  public var service: VideosAsync

  public required init(service: VideosAsync) {
    self.service = service
  }

}

public protocol Metrics {

  ///
  /// - Parameters:
  ///   - metrics: 
  /// - Throws: 
  func sendMetrics(metrics: TList<Metric>) throws

}

open class MetricsClient : TClient /* , Metrics */ {

}

public protocol MetricsAsync {

  ///
  /// - Parameters:
  ///   - metrics: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func sendMetrics(metrics: TList<Metric>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class MetricsProcessor /* Metrics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Metrics) throws -> Void]

  public var service: Metrics

  public required init(service: Metrics) {
    self.service = service
  }

}

open class MetricsProcessorAsync /* Metrics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, MetricsAsync) throws -> Void]

  public var service: MetricsAsync

  public required init(service: MetricsAsync) {
    self.service = service
  }

}

public let BRIDGET_VERSION : String = "1.0.0"


