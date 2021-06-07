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
    @IBOutlet weak var ContactCell: UITableViewCell!


    override func viewDidLoad() {
        super.viewDidLoad()
                ContactImage.image = UIImage(named: ("icon"))
                ContactImage.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
                ContactImage.layer.cornerRadius =  ContactImage.frame.size.height/2
                ContactImage.clipsToBounds = true
        
        ViewController.ContactTable.datasource = self
        ViewController.ContactTable.delegate = self
}

    class ContactTable: UITableView {
        extension TVDelegate: UITableViewDatasource, UITableViewDelegate {
                func tableView(_ tableView: UITableView, numberOfRowsInsection section: Int) -> Int {
                return 6
                }
    
                func tableView(_ tableView: UITableView, cellForRowAt: indexPath: IndexPath) -> UITableViewCell {
        
                //some code
        
                let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as!
                    ContactCell
                return cell
                }
        }
    }
}
    
                   
                   
                   
      /*  ViewController.ContactTable.datasource = self
        ViewController.ContactTable.delegate = self
        let parent = ViewController()
        let child = ContactTable()
        parent.ViewController.addSubview(child.ContactTable)*/
        
        
        
    
   /* class UITableView: UIScrollView{
        func tableView(_ ContactTable: UITableView, numberOfRowsInSection section: Int) -> Int{
            return 6        }
    }*/


