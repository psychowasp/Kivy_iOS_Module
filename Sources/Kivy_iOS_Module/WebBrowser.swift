//
//  WebBrowser.swift
//  Kivy_iOS_Module
//

import Foundation
import UIKit
import Combine

import PySwiftKit
import PySerializing
import PyDictionary
import PySwiftWrapper
import PySwiftObject
import PyUnpack




func ios_open_url(url: String) {
    //NSString *nsurl = [NSString stringWithCString:(char *)url encoding:NSUTF8StringEncoding];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString: nsurl]];
    fatalError()
}




func load_url_webview(url: URL, x: Int, y: Int, width: Int, height: Int) {
    fatalError()
}



@PyClass
class IOSWebView {
    
    @PyInit init() {}
    
    @PyMethod
    func open(url: URL, x: Int, y: Int, width: Int, height: Int) {
        load_url_webview(url: url, x: x, y: y, width: width, height: height)
    }
}

@PyClass
class IosBrowser {
    
    @PyInit init() {}
    
    @PyMethod
    func open(url: URL) {
        fatalError()
    }
    
    @PyMethod
    func open_new(url: URL) {
        fatalError()
    }
    @PyMethod
    func open_new_tab(url: URL) {
        fatalError()
    }
    
}
