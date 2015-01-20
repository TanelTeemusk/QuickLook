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


