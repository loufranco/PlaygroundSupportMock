//
//  PlaygroundSupport.swift
//  PlaygroundSupport
//
//  Created by Lou Franco on 9/2/16.
//  Copyright © 2016 Lou Franco.
//

import Foundation

public enum PlaygroundValue {
    case array([PlaygroundValue])
    case dictionary([String: PlaygroundValue])
    case string(String)
    case data(Data)
    case date(Date)
    case integer(Int)
    case floatingPoint(Double)
    case boolean(Bool)
}

public protocol PlaygroundRemoteLiveView {
    func send(_ value: PlaygroundValue)
}

public protocol PlaygroundLiveViewMessageHandler {
    func liveViewMessageConnectionOpened()
    func liveViewMessageConnectionClosed()
    func receive(_ message: PlaygroundValue)
}

public class PlaygroundPage {
    public static var current = PlaygroundPage()
    public var liveView: AnyObject!
	public var assessmentStatus: AssessmentStatus?
	public var needsIndefiniteExecution: Bool = false
	public var text : String {
		get {
			return "Mock Text"
		}
	}
	public func finishExecution() -> Never {
		exit(0)
	}
}

public class PlaygroundRemoteLiveViewProxy: PlaygroundRemoteLiveView {
    public func send(_ value: PlaygroundValue) {
        
    }
}

public enum AssessmentStatus {
	case fail(hints: [String], solution: String?)
	case pass(message: String?)
}
