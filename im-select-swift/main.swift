//
/* 
 *		Created by 游諭 in 2021/1/9
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */


import Foundation
import ArgumentParser


struct ImSelect: ParsableCommand {
    
    @Argument(help: "The input method want to switch")
    var targetIM: String?
    
    
    func run() throws {
        if let targetIM = targetIM {
            try selectedIM(targetIM: targetIM)
        } else {
            print(try getCurrentIM())
        }
    }
}


ImSelect.main()
