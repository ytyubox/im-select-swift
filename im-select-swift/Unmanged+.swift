//
/* 
 *		Created by 游諭 in 2021/1/9
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */


import Foundation
 func Unbox(_ kb: UnsafeRawPointer) -> AnyObject {
    return Unmanaged<AnyObject>.fromOpaque(kb).takeUnretainedValue()
}
