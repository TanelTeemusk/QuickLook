# QuickLook
QuickLook example in Swift


Using QuickLook in Swift 

iOS SDK provides a really handy little system to quickly preview documents, QuickLook or QLPreviewController. 
There are some examples of using this API for Objective-C but not so many using Swift. 
While you can get more information about this API at official Apple QLPreviewController class reference, I decided to demonstrate a quick working prototype of this API.

QLPreviewController can preview the following file formats:
iWork documents
Microsoft Office documents
Rich Text Format (RTF) documents
PDF files (used in this example)
Images
Text files
CSV files

QLPreviewController needs a data source object. QuickLook preview controller can either be pushed into view or display in modal view. The latter is used for the following example.

 
- Make a new Single view application project in Xcode and call it anything you like. 
- Add a supported document to project root. Just drag and drop it into Xcode and copy items if needed.
- Open ViewController.swift and import QuickLook. Also make sure you extend this class with QLPreviewControllerDataSource

import UIKit
import QuickLook

class ViewController: UIViewController, QLPreviewControllerDataSource {

- Initiate the QLPreviewController in viewDidLoad function and add dataSource to it.

var ql = QLPreviewController()
ql.dataSource = self

Also present the view controller 

presentViewController(ql, animated: true, completion: nil)

- Add two data source non-optional methods

func numberOfPreviewItemsInPreviewController(controller: QLPreviewController!) -> Int{
  return 1
}

func previewController(controller: QLPreviewController!, previewItemAtIndex index: Int) -> QLPreviewItem! {
  println(“Getting item”)
  var mainbundle = NSBundle.mainBundle()
  var url = mainbundle.pathForResource(“<YOUR DOC FILENAME>”, ofType: “pdf”)!
  println(url)
  var doc = NSURL(fileURLWithPath: url)
  return doc
}

Here you will have to substitute your document name in pathForResource function and also add a correct type for the file. In our example case it’s pdf.

- Compile and preview the magic.
