//
//  AddQuestionViewController.swift
//  lesson-Millioner
//
//  Created by admin on 06.11.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class AddQuestionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

       
    }

}

extension AddQuestionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddQuestionTableViewCell", for: indexPath) as! AddQuestionTableViewCell
        
        
        return cell
    }
    
    
}
