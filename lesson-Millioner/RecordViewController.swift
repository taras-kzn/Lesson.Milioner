//
//  RecordViewController.swift
//  Millioner
//
//  Created by admin on 19.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

final class RecordViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension RecordViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellRecords", for: indexPath) as! RecordTableViewCell
        
        let record = Game.shared.records[indexPath.row]
        let precent = record.corecctAnswer * 100 / record.allQuestions
        let date = DateFormatter()
        date.dateFormat = "MM-dd-yyyy HH:mm"
        cell.corecctAnswerLabel.text = "Вы ответили на:\(record.corecctAnswer) вопроса из \(record.allQuestions)"
        cell.percentAnswer.text = "Ваш процент отгаданных: \(precent) %"
        cell.dateLabel.text = "\(date.string(from: record.date))"
        
        return cell
    }
    
    
}
