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
            print(response.request! as Any)
            print(response.response! as Any)
            print(response.data! as Any)
            print(response.result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

