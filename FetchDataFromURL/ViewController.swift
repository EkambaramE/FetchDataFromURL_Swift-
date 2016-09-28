//
//  ViewController.swift
//  FetchDataFromURL
//
//  Created by EkambaramE on 26/09/16.
//  Copyright © 2016 Karya Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    let networkManger = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkManger.fetchData(fromURL: "https://cdn.contentful.com/spaces/fxdxl9qwawuh/assets/3KEvHI7a4gMMaEuqkeyakI?access_token=84cd48102904fd5f04728811e5635ef079c6e174e2da8ccf0098cc2d5042030c") { (data) -> (Void) in
          
            print("Title: \(data.title)")
            print("ContentType: \(data.contentType)")
            print("URL: \(data.url)")
            print("FileName: \(data.fileName)")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



