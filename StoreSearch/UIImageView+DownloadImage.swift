//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Atikur Rahman on 1/12/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        let downloadTask = session.downloadTaskWithURL(url, completionHandler: {
            [weak self] url, response, error in
            if error == nil && url != nil {
                let data = NSData(contentsOfURL: url)
                let image = UIImage(data: data)
                
                dispatch_async(dispatch_get_main_queue(), {
                    if let strongSelf = self {
                        strongSelf.image = image
                    }
                })
            }
        })
        downloadTask.resume()
        return downloadTask
    }
}
