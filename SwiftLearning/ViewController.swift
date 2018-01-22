//
//  ViewController.swift
//  SwiftLearning
//
//  Created by Dev on 1/22/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet private weak var countingLabel: UILabel!
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet private weak var showHistoryButtom: UIButton!
    
    private var counter: Int = 0
    private var historyArray = [Int]()
    
    //MARK: View Controller LifeCycle Methods
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //MARK: UI Events
    @IBAction func addButtonPressed(_ sender: Any)
    {
        counter = .random()
        countingLabel.text = String(counter)
        view.backgroundColor = UIColor.random()
        let historyItem = counter
        historyArray.append(historyItem)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "historyIdentifier"
        {
            let historyVC:HistoryViewController = segue.destination as! HistoryViewController;
            historyVC.historyArray = self.historyArray
        }
    }
}

