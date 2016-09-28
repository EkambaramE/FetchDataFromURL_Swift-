//
//  ModelClass.swift
//  FetchDataFromURL
//
//  Created by EkambaramE on 27/09/16.
//  Copyright © 2016 Karya Technologies. All rights reserved.
//

import UIKit

class ModelClass: NSObject {
    
    var title: String = ""
    var url: String = ""
    var fileName: String = ""
    var contentType: String = ""
    
    init(result : [String: Any]) {
        
        guard let value = result["fields"] as? [String: Any] ,
            let file = value["file"] as? [String: Any] else {
                return
        }
        
        self.title = value["title"] as! String
        self.url = file["url"] as! String
        self.fileName = file["fileName"] as! String
        self.contentType = file["contentType"] as! String
        
    }
    
}
