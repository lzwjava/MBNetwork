//
//  MBContainer.swift
//  Pods
//
//  Created by ZhengYidong on 14/12/2016.
//
//

import Foundation

public protocol MBContainable {
    func contentContainer() -> UIView?
}

extension MBContainable {
    func latestMask() -> UIView? {
        var latestMask:UIView? = nil
        if let container = contentContainer() {
            for subview in container.subviews {
                if let _ = subview as? MBMaskable {
                    latestMask = subview
                }
            }
        }
        return latestMask
    }
}