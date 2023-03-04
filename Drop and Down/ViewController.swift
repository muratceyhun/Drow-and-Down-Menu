//
//  ViewController.swift
//  Drop and Down
//
//  Created by Murat Ceyhun Korpeoglu on 4.03.2023.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    
    let menu: DropDown = {
        let menu = DropDown()
        menu.dataSource = ["Item1",
                           "Item2",
                           "Item3",
                           "Item4",
                           "Item5"]
        let images = ["bookmark", "house", "gear", "ear", "book"]
        menu.cellNib = UINib(nibName: "DropDownCell", bundle: nil)
        menu.customCellConfiguration = { index, title, cell in
            guard let cell = cell as? MyCell else {
                return
            }
            
            cell.myImageView.image = UIImage(systemName: images[index])
        }
        return menu
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = UIView(frame: navigationController?.navigationBar.frame ?? .zero)
        myView.backgroundColor = .blue
        navigationController?.navigationBar.topItem?.titleView = myView
        guard let topView = navigationController?.navigationBar.topItem?.titleView else { return }
        menu.anchorView = topView
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didClickedTopItem))
        gesture.numberOfTapsRequired = 1
        topView.addGestureRecognizer(gesture)
        menu.selectionAction = { index, title in
            print("index  \(index) and \(title)")
            
        }
        
    }
    
    @objc func didClickedTopItem() {
        menu.show()
        
    }
}

