//
//  MainViewController.swift
//  iOSControl
//
//  Created by Tào Quỳnh  on 10/14/18.
//  Copyright © 2018 Tào Quỳnh . All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sectionOne = ["UITextField", "UIButton", "UIDatePicker", "UIPickerView", "UISwitch", "UINumber", "UISegment", "UITableView", "UICollectionView"]
    
    var sectionTwo = ["Tap Gestures", "Swipe Gestures", "Pinch Gestures", "Pan Gestures", "Rotate Gestures", "Long Press Gestures"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "iOS Tutorial"
        setupTableView()
    }

    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        //tất cả cell được sử dụng phải được đăng kí trước với tableView
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    // delegate trả về tổng số sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // delegate trả về chiều cao sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    // delegate trả về title cho mỗi section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Controls"
        }
        return "Gestures"
    }
    
    // delegate trả về số cell trong mỗi section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return sectionOne.count
        } else {
            return sectionTwo.count
        }
    }
    
    // delegate trả về chiều cao cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    // delegate trả về cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = String(indexPath.row + 1) + ". " + sectionOne[indexPath.row]
        } else {
            cell.textLabel?.text = "\(indexPath.row + 1). \(sectionTwo[indexPath.row])"
        }
        return cell
    }
    
    // delegate chọn cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            switch sectionOne[indexPath.row] {
            case "UITextField":
                navigationController?.pushViewController(TextFieldViewController(), animated: true)
            default:
                print("default")
            }
        } else {
            print(sectionTwo[indexPath.row])
        }
        
    }
    
}
