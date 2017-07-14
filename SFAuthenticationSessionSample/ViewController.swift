//
//  ViewController.swift
//  SFAuthenticationSessionSample
//
//  Created by ogawa_kousuke on 2017/07/14.
//  Copyright © 2017年 koogawa All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    var session: SFAuthenticationSession? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func auth(_ sender: Any) {
        let url = URL(string: "https://ja.foursquare.com/oauth2/authenticate?client_id=(YOUR_CLIENT_ID)&response_type=token&redirect_uri=fsoauthexample://authorized")!
        self.session = SFAuthenticationSession(url: url, callbackURLScheme: nil) { url, error in
            print(url, error)
            // fsoauthexample://authorized#access_token=XXXXXXXXXXXXXX
        }
        session?.start()
    }

}

