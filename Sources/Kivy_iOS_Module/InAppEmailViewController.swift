import Foundation
import UIKit
import Combine
import MessageUI

import PySwiftKit
import PySerializing
//import PyDictionary
import PySwiftWrapper


class InAppEmailViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    
}


func ios_send_mail(
    subject: String,
    text: String,
    mimetype: String,
    filename: String,
    filename_alias: String,
    callback: PyPointer,
    userdata: PyPointer
) -> Int {
    
    return 0
}
