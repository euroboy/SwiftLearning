//
//  HistoryViewController.swift
//  SwiftLearning
//
//  Created by Dev on 1/22/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet private weak var closeButton: UIButton!
    @IBOutlet private weak var tableView: UITableView!
    
    var historyArray = [Int]()
    
    //MARK: Initializations
    func loadSettings()
    {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "historyCell")
    }
    
    //MARK: View Controller LifeCycle Methods
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadSettings()
    }
    
    //MARK: UI Events
    @IBAction func closeButtonPressed(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return historyArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier:"historyCell", for:indexPath)
        let item = historyArray[indexPath.row]
        cell.textLabel?.text = String(item)
        return cell
    }
    
}
