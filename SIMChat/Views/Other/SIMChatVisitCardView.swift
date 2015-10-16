//
//  SIMChatVisitCardView.swift
//  SIMChat
//
//  Created by sagesse on 9/19/15.
//  Copyright © 2015 Sagesse. All rights reserved.
//

import UIKit

//
// +----------+
// | +------+ |
// | +------+ |
// +----------+
//

///
/// 聊天名片
///
class SIMChatVisitCardView: SIMView {
    /// 构建
    override func build() {
        super.build()
        
        let vs = ["t" : titleLabel]
        
        // config
        titleLabel.font = UIFont.systemFontOfSize(14)
        titleLabel.textColor = UIColor(hex: 0x7B7B7B)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // add views
        addSubview(titleLabel)
        
        // add constraints
        addConstraints(NSLayoutConstraintMake("H:|-(8)-[t]-(8)-|", views: vs))
        addConstraints(NSLayoutConstraintMake("V:|-(0)-[t]-(0)-|", views: vs))
    }
    /// 关联的用户
    var user: SIMChatUser2? {
        willSet {
            titleLabel.text = newValue?.name ?? newValue?.identifier ?? "<Unknow>"
        }
    }
    
    private(set) lazy var titleLabel = UILabel()
}
