//
//  ViewController.swift
//  quicklook_tryout
//
//  Created by Tanel Teemusk on 20/01/15.
//  Copyright (c) 2015 Tanel Teemusk. All rights reserved.
//

import UIKit
import QuickLook

class ViewController: UIViewController, QLPreviewControllerDataSource {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var ql = QLPreviewController()
        ql.dataSource  = self
        presentViewController(ql, animated: true, completion: nil)
    }
    
    
    func numberOfPreviewItemsInPreviewController(controller: QLPreviewController!) -> Int{
        return 1
    }
    
    func previewController(controller: QLPreviewController!, previewItemAtIndex index: Int) -> QLPreviewItem! {
        println("Getting item")
        var mainbundle = NSBundle.mainBundle()
        var url = mainbundle.pathForResource("mypdf", ofType: "pdf")!
        println(url)
        var doc = NSURL(fileURLWithPath: url)
        return doc
    }
    
    
    


}

