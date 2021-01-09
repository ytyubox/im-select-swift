//
/* 
 *		Created by 游諭 in 2021/1/9
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */



import Carbon

func selectedIM(targetIM: String) throws {
    let dic:CFDictionary = [kTISPropertyInputSourceID:targetIM] as CFDictionary
    let keyboards = TISCreateInputSourceList(dic, false).takeUnretainedValue()
    let kb = try CFArrayGetValueAtIndex(keyboards, 0).get()
    let s = Unbox(kb) as! TISInputSource
    TISSelectInputSource(s)
}

func getCurrentIM() throws -> String {
    let input = TISCopyCurrentKeyboardInputSource().retain()
    let currentIS: TISInputSource = input.takeRetainedValue()
    return try getName(currentIS)
}

fileprivate func getName(_ currentIS: TISInputSource) throws -> String {
    let sourceIDPointer = try TISGetInputSourceProperty(currentIS, kTISPropertyInputSourceID).get()
    return try  (Unbox(sourceIDPointer) as? String).get()
}
