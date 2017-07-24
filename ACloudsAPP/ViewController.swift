//
//  ViewController.swift
//  ACloudsAPP
//
//  Created by 泰倫斯 on 2017/7/24.
//  Copyright © 2017年 iOSA. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://httpbin.org/get").responseJSON { (response) in
//            print(response.request! as Any)
//            print(response.response! as Any)
//            print(response.data! as Any)
//            print(response.result)
//            if let ARRAY = response.result.value {
//                print("準備印出result中的資料：")
//                print(ARRAY)
//            }
            
            if let JASON = response.result.value {
                if let dictionary =  JASON as? [String: Any] {
                    
                    
                    
                    if let value = dictionary["args"] as? [String: Any]  {
                        print("釋出key為args的值 --- \(value)")
                    }
                    
                    if let header_dictionary = dictionary["headers"] as? [String: Any] {
                            if let value = header_dictionary["Accept"] as? String {
                                print("釋出header key為Accept的值 --- \(value)")
                            }
                            if let value = header_dictionary["Accept-Encoding"] as? String {
                                print("釋出header key為Accept-Encoding的值 --- \(value)")
                            }
                            if let value = header_dictionary["Accept-Language"] as? String {
                                print("釋出header key為Accept-Language的值 --- \(value)")
                            }
                            if let value = header_dictionary["Connection"] as? String {
                                print("釋出header key為Connection的值 --- \(value)")
                            }
                            if let value = header_dictionary["Cookie"] as? String {
                                print("釋出header key為Cookie的值 --- \(value)")
                            }
                    }

                    if let value = dictionary["origin"] as? String {
                        print("釋出key為origin的值 --- \(value)")
                    }
                    if let value = dictionary["url"] as? String {
                        print("釋出key為url的值 --- \(value)")
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

