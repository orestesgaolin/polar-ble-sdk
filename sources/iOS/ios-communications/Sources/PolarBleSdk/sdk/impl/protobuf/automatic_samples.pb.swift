// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: automatic_samples.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// AUTOS%03d.BPB=PbAutomaticSampleSessions

import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Data_PbMeasTriggerType: SwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int

  ///Automatic measurement triggered by user high activity. Contains 1-n samples
  case triggerTypeHighActivity // = 1

  ///Automatic measurement triggered by user low activity. Contains 1-n samples
  case triggerTypeLowActivity // = 2

  ///Automatic measurement triggered by timer. Contains 1 sample
  case triggerTypeTimed // = 3

  ///Manual measurement (other than exercise) triggered by user. Contains 1-n samples
  case triggerTypeManual // = 4

  init() {
    self = .triggerTypeHighActivity
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 1: self = .triggerTypeHighActivity
    case 2: self = .triggerTypeLowActivity
    case 3: self = .triggerTypeTimed
    case 4: self = .triggerTypeManual
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .triggerTypeHighActivity: return 1
    case .triggerTypeLowActivity: return 2
    case .triggerTypeTimed: return 3
    case .triggerTypeManual: return 4
    }
  }

}

///
///Automatic sample session per day
struct Data_PbAutomaticSampleSessions: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Date of samples (starting time of 00:00 in user local time zone)
  var day: PbDate {
    get {return _day ?? PbDate()}
    set {_day = newValue}
  }
  /// Returns true if `day` has been explicitly set.
  var hasDay: Bool {return self._day != nil}
  /// Clears the value of `day`. Subsequent reads from it will return its default value.
  mutating func clearDay() {self._day = nil}

  /// Heart rate samples
  var samples: [Data_PbAutomaticHeartRateSamples] = []

  /// PP interval samples
  var ppiSamples: [Data_PbPpIntervalAutoSamples] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _day: PbDate? = nil
}

struct Data_PbAutomaticHeartRateSamples: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// recording trigger type
  var triggerType: Data_PbMeasTriggerType {
    get {return _triggerType ?? .triggerTypeHighActivity}
    set {_triggerType = newValue}
  }
  /// Returns true if `triggerType` has been explicitly set.
  var hasTriggerType: Bool {return self._triggerType != nil}
  /// Clears the value of `triggerType`. Subsequent reads from it will return its default value.
  mutating func clearTriggerType() {self._triggerType = nil}

  /// recording time. Delta from parent messages 'day'-field 00:00 time.
  var time: PbTime {
    get {return _time ?? PbTime()}
    set {_time = newValue}
  }
  /// Returns true if `time` has been explicitly set.
  var hasTime: Bool {return self._time != nil}
  /// Clears the value of `time`. Subsequent reads from it will return its default value.
  mutating func clearTime() {self._time = nil}

  /// heart rate
  /// range [0 - 250] (1/min)
  var heartRate: [UInt32] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _triggerType: Data_PbMeasTriggerType? = nil
  fileprivate var _time: PbTime? = nil
}

///
///Optical PP interval samples
///- PP interval: time period between two optical heart rate pulses
struct Data_PbPpIntervalAutoSamples: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Recording trigger type
  var triggerType: Data_PbPpIntervalAutoSamples.PbPpIntervalRecordingTriggerType {
    get {return _triggerType ?? .ppiTriggerTypeUndefined}
    set {_triggerType = newValue}
  }
  /// Returns true if `triggerType` has been explicitly set.
  var hasTriggerType: Bool {return self._triggerType != nil}
  /// Clears the value of `triggerType`. Subsequent reads from it will return its default value.
  mutating func clearTriggerType() {self._triggerType = nil}

  /// Recording time, start time of the first PP interval in this sample packet
  ///   - Delta from parent messages 'day'-field 00:00 time in user local time zone
  var recordingTime: PbTime {
    get {return _recordingTime ?? PbTime()}
    set {_recordingTime = newValue}
  }
  /// Returns true if `recordingTime` has been explicitly set.
  var hasRecordingTime: Bool {return self._recordingTime != nil}
  /// Clears the value of `recordingTime`. Subsequent reads from it will return its default value.
  mutating func clearRecordingTime() {self._recordingTime = nil}

  /// PP interval samples
  var ppi: Data_PbPpIntervalSamples {
    get {return _ppi ?? Data_PbPpIntervalSamples()}
    set {_ppi = newValue}
  }
  /// Returns true if `ppi` has been explicitly set.
  var hasPpi: Bool {return self._ppi != nil}
  /// Clears the value of `ppi`. Subsequent reads from it will return its default value.
  mutating func clearPpi() {self._ppi = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// PP interval recording trigger types
  enum PbPpIntervalRecordingTriggerType: SwiftProtobuf.Enum, Swift.CaseIterable {
    typealias RawValue = Int

    /// Undefined
    case ppiTriggerTypeUndefined // = 0

    /// Automatic recording (for example 24/7 recording)
    case ppiTriggerTypeAutomatic // = 1

    /// Manual recording (started by user)
    case ppiTriggerTypeManual // = 2

    init() {
      self = .ppiTriggerTypeUndefined
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .ppiTriggerTypeUndefined
      case 1: self = .ppiTriggerTypeAutomatic
      case 2: self = .ppiTriggerTypeManual
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .ppiTriggerTypeUndefined: return 0
      case .ppiTriggerTypeAutomatic: return 1
      case .ppiTriggerTypeManual: return 2
      }
    }

  }

  init() {}

  fileprivate var _triggerType: Data_PbPpIntervalAutoSamples.PbPpIntervalRecordingTriggerType? = nil
  fileprivate var _recordingTime: PbTime? = nil
  fileprivate var _ppi: Data_PbPpIntervalSamples? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "data"

extension Data_PbMeasTriggerType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "TRIGGER_TYPE_HIGH_ACTIVITY"),
    2: .same(proto: "TRIGGER_TYPE_LOW_ACTIVITY"),
    3: .same(proto: "TRIGGER_TYPE_TIMED"),
    4: .same(proto: "TRIGGER_TYPE_MANUAL"),
  ]
}

extension Data_PbAutomaticSampleSessions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbAutomaticSampleSessions"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "day"),
    2: .same(proto: "samples"),
    3: .standard(proto: "ppi_samples"),
  ]

  public var isInitialized: Bool {
    if self._day == nil {return false}
    if let v = self._day, !v.isInitialized {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.samples) {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.ppiSamples) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._day) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.samples) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.ppiSamples) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._day {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.samples.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.samples, fieldNumber: 2)
    }
    if !self.ppiSamples.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ppiSamples, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbAutomaticSampleSessions, rhs: Data_PbAutomaticSampleSessions) -> Bool {
    if lhs._day != rhs._day {return false}
    if lhs.samples != rhs.samples {return false}
    if lhs.ppiSamples != rhs.ppiSamples {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Data_PbAutomaticHeartRateSamples: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbAutomaticHeartRateSamples"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trigger_type"),
    2: .same(proto: "time"),
    3: .standard(proto: "heart_rate"),
  ]

  public var isInitialized: Bool {
    if self._triggerType == nil {return false}
    if self._time == nil {return false}
    if let v = self._time, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._triggerType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._time) }()
      case 3: try { try decoder.decodeRepeatedUInt32Field(value: &self.heartRate) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._triggerType {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._time {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.heartRate.isEmpty {
      try visitor.visitPackedUInt32Field(value: self.heartRate, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbAutomaticHeartRateSamples, rhs: Data_PbAutomaticHeartRateSamples) -> Bool {
    if lhs._triggerType != rhs._triggerType {return false}
    if lhs._time != rhs._time {return false}
    if lhs.heartRate != rhs.heartRate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Data_PbPpIntervalAutoSamples: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PbPpIntervalAutoSamples"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trigger_type"),
    2: .standard(proto: "recording_time"),
    3: .same(proto: "ppi"),
  ]

  public var isInitialized: Bool {
    if let v = self._recordingTime, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._triggerType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._recordingTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._ppi) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._triggerType {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._recordingTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._ppi {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Data_PbPpIntervalAutoSamples, rhs: Data_PbPpIntervalAutoSamples) -> Bool {
    if lhs._triggerType != rhs._triggerType {return false}
    if lhs._recordingTime != rhs._recordingTime {return false}
    if lhs._ppi != rhs._ppi {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Data_PbPpIntervalAutoSamples.PbPpIntervalRecordingTriggerType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PPI_TRIGGER_TYPE_UNDEFINED"),
    1: .same(proto: "PPI_TRIGGER_TYPE_AUTOMATIC"),
    2: .same(proto: "PPI_TRIGGER_TYPE_MANUAL"),
  ]
}