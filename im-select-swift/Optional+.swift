//
/* 
 *		Created by 游諭 in 2021/1/9
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */


import Foundation
extension Optional {
    func get() throws -> Wrapped {
        switch self {
        case .none:
            throw NSError(domain: "\(Wrapped.self)(nil)", code: 0)
        case .some(let w):
            return w
        }
    }
}
