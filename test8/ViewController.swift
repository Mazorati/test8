//
//  ViewController.swift
//  test8
//
//

import UIKit
import Tabman
import Pageboy

class ViewController: TabmanViewController, PageboyViewControllerDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.dataSource = self
        automaticallyAdjustsChildScrollViewInsets = true
        
        // configure the bar
        self.bar.items = [Item(title: "Page 1"),
                          Item(title: "Page 2")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return 2
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "test1")
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }


}

