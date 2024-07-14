# NefertitiFile
NefertitiFile by <A HREF=https://www.linkedin.com/in/dmytro-skorokhod-b480b845/>Dmytro Skorokhod</A> is an open source file format library used by <A HREF=https://github.com/D-Integral/Nefertiti>Nefertiti</A>, an open source library for making searchable PDFs from photos.

Here is an example of NefertitiFileProtocol usage:
```Swift
    import NefertitiFile
    
    var file: (any NefertitiFileProtocol)?
    
    func activityViewController(with file: (any NefertitiFileProtocol)) -> UIActivityViewController? {
        guard let pdfDocumentDataUrl = file.documentDataUrl else { return nil }
    
        let activityViewController = UIActivityViewController(activityItems: [pdfDocumentDataUrl],
                                                              applicationActivities: nil)
    
        return activityViewController
    }
```

NefertitiFileProtocol has properties <Code>documentDataUrl</Code> and <Code>thumbnailDataUrl</Code>. The first of them is a url to the whole document data and the last one is a link to a thumbnail which you may use for a small document preview.
