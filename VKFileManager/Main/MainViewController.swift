//
//  MainViewController.swift
//  VKFileManager
//
//  Created by Victor Alekseev on 21/07/2018.
//  Copyright © 2018 Victor Alekseev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var viewModel:MainViewModel
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     func login(){

            self.present(alert, animated: true, completion: nil)
         
     }
    
    func alertCall(title: String, message: String, action: @escaping (UIAlertAction) -> ()) {
    //put your realisation here
}
                   
    func actionHandler(action: UIAlertAction) {
    //handle your style here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
