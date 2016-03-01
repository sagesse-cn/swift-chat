//
//  SIMChatMediaBrowserProtocol.swift
//  SIMChat
//
//  Created by sagesse on 2/23/16.
//  Copyright © 2016 sagesse. All rights reserved.
//

import UIKit

///
/// 媒体协议
///
public protocol SIMChatMediaProtocol: class {
    /// 显示尺寸
    var size: CGSize { get }
    
    /// 原文件地址
    var originalURL: NSURL { get }
    /// 缩略图地址
    var thumbnailURL: NSURL { get }
}

///
/// 媒体浏览器代理
///
public protocol SIMChatMediaBrowserDelegate: class {
}

///
/// 媒体浏览器协议
///
public protocol SIMChatMediaBrowserProtocol: class {
    func browse(media:SIMChatMediaProtocol, withTarget: SIMChatBrowseAnimatedTransitioningTarget)
}