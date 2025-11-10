
import Foundation
import UIKit
import Combine


import PySwiftKit
import PySerializing
//import PyDictionary
import PySwiftWrapper


class NativeImagePicker {
    
    init() {
        
    }
    
    func getFileName(ns_url: URL) -> String? {
        if
            let image_name = ns_url.pathComponents.last,
            let ret = image_name.components(separatedBy: ".").first
        {
            return ret
        } else {
            return nil
        }
    }
    
    func writeToPNG(info: [String:PyPointer]) -> String? {
        let image_name = info[UIImagePickerController.InfoKey.imageURL.rawValue]
        
        // objc
        // Get the png representation of the image
        //UIImage *image = info[UIImagePickerControllerOriginalImage];
        //NSData *imageData = UIImagePNGRepresentation(image);
        
        // Generate the final image destination
        //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //NSString *documentsDirectory = [paths objectAtIndex:0];
        //NSString *imagePath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", image_name]];
        
        // Write the image data to the file
        //if (![imageData writeToFile:imagePath atomically:NO])
        //{
            //NSLog(@"Failed to cache image data to disk");
            //   return @"";
        //}
        //else
        //{
        //    NSLog(@"the cachedImagedPath is %@",imagePath);
        //    return imagePath;
        //}
        return nil
    }
}
