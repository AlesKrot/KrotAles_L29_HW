//
//  ViewController.swift
//  KrotAles_L29_HW
//
//  Created by Ales Krot on 29.01.22.
//

import UIKit
import DropDown
import GoodTools

class ViewController: UIViewController {
    @IBOutlet weak var containerViewDropDown: UIView!
    @IBOutlet weak var studentGroupLabel: UILabel!
    @IBOutlet weak var studentsTableView: UITableView!
    
    let dropDown = DropDown()
    var studentGroups = [String]()
    var tempStudentGroup = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dropDown.anchorView = containerViewDropDown
        
        studentGroups = ["iOS-online 9", "iOS-online 10", "iOS-online 11"]
        dropDown.dataSource = studentGroups
        
        let studentGroupFirst = ["Andrei Aliaksandrau", "Ales Bialiatski", "Andrei Chapiuk", "Uladzimir Labkovich", "Tatsiana Lasitsa", "Valiantsin Stefanovich", "Marfa Rabkova"]
        let studentGroupSecond = ["Leanid Sudalenka", "Akikhiro Hayeuski-Hanada", "Alena Lazarchyk", "Alena Talkachova", "Ales Pushkin", "Aliaksandr Ivulin"]
        let studentGroupThird = ["Aliaksei Kudasau", "Andrei Harun", "Iryna Zlobina", "Maryna Zolatava", "Pavel Yukhnevich", "Piotr Marchanka", "Ryhor Kastusiou"]
        
        studentsTableView.dataSource = self
        studentsTableView.delegate = self
        
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            switch item {
            case "iOS-online 9":
                self.tempStudentGroup = studentGroupFirst
            case "iOS-online 10":
                self.tempStudentGroup = studentGroupSecond
            case "iOS-online 11":
                self.tempStudentGroup = studentGroupThird
            default:
                print("I don't have a student group")
            }
            print("Selected item: \(item) at index: \(index)")
            self.studentGroupLabel.text = item
            self.studentsTableView.reloadData()
        }
        //TEST. Task 4.
        let array = [1, 3, 10, 21]
        let index = array.lift(index: 2)
        print(index!)
    }

    @IBAction func onButtonContainerViewDropDown(_ sender: UIButton) {
        dropDown.show()
    }
}

extension ViewController: UITableViewDelegate {

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempStudentGroup.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell: UITableViewCell?
        let identifierCell = "student"

        cell = tableView.dequeueReusableCell(withIdentifier: identifierCell)

        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: identifierCell)
        }

        cell?.textLabel?.text = tempStudentGroup[indexPath.item]
        
        return cell!
    }
}
