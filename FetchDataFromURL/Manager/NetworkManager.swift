//
//  NetworkManager.swift
//  FetchDataFromURL
//
//  Created by EkambaramE on 26/09/16.
//  Copyright © 2016 Karya Technologies. All rights reserved.
//

import UIKit

class NetworkManager: NSObject {
    
    func fetchData(fromURL : String, completion: @escaping (ModelClass) -> (Void)) {
        
        //set up the URL request
        guard let url = URL(string: fromURL) else {
            print("Error: Can't create URL")
            return
        }
        
        //set up the ssession
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: url) { (data, response, error) in
            
            guard let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: []),
                let responseData = json as? [String: Any] else {
                    return
            }
            
            let modelObj = ModelClass(result: responseData)
            completion(modelObj)
            
        }
        task.resume()
    }
    
}
