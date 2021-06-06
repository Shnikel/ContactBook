//
//  ViewController.swift
//  Conbook
//
//  Created by Nichole on 6/5/21.
//  Copyright © 2021 Nichole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ContactTable: UITableView!
    @IBOutlet weak var Contacts: UILabel!
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var ContactImage: UIImageView!
    let ContactTable = self.ContactTable
    

    override func viewDidLoad() {
        super.viewDidLoad()
        func TVSubview() {
            addChild(ContactTable)
            view.addSubview(ContactTable.view)
            ContactTable.didMove(toParent: self)
        }
        ContactImage.image = UIImage(named: ("icon"))
        ContactImage.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        ContactImage.layer.cornerRadius =  ContactImage.frame.size.height/2
        ContactImage.clipsToBounds = true
        
      /*  ViewController.ContactTable.datasource = self
        ViewController.ContactTable.delegate = self
        let parent = ViewController()
        let child = ContactTable()
        parent.ViewController.addSubview(child.ContactTable)*/
        
        
        
    }
    class UITableView: UIScrollView{
        func tableView(_ ContactTable: UITableView, numberOfRowsInSection section: Int) -> Int{
            return 6        }
    }
    }


