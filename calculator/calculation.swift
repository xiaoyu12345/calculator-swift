//
//  calculation.swift
//  calculator
//
//  Created by 小鱼🐟 on 16/6/28.
//  Copyright © 2016年 小鱼🐟. All rights reserved.
//

import Foundation
struct calculator  {
    private var :algorithm = .no
    
    mutating func set(temporary:algorithm) {
        newcalculator = temporary
    }
    
    func 读取当前算法() -> 算法 {
        return newcalculator
    }
    
    enum 算法 {
        case 加法
        case 减法
        case 乘法
        case 除法
        case 平方
        case 指数幂
        case 未选择
    }
    
    func 求结果(操作数 操作数:Double, 被操作数:Double) -> String {
        var 返回 = ""
        switch newcalculator {
        case .加法:
            返回 = "\(操作数 + 被操作数)"
        case .减法:
            返回 = "\(操作数 - 被操作数)"
        case .乘法:
            返回 = "\(操作数 * 被操作数)"
        case .除法 where 被操作数 != 0 :
            返回 = "\(操作数 / 被操作数)"
        case .平方:
            返回 = "\(操作数 * 操作数)"
        case .指数幂:
            var 临时 = 操作数
            let 整形被操作数 = Int(被操作数)
            for _ in 1..<整形被操作数 {
                临时 *= 操作数
            }
            返回 = "\(临时)"
        case .未选择:
            返回 = "错误：未选择算法！"
        default:
            返回 = "0 不能做被除数！"
            
        }
        return 返回
    }
    
}