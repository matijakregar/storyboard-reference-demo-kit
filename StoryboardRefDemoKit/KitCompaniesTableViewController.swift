//
//  KitCompaniesTableViewController.swift
//  StoryboardRefDemoKit
//
//  Created by Matija Kregar on 03/11/2016.
//  Copyright © 2016 Matija Kregar. All rights reserved.
//

import UIKit

// A tableview controller that displays companies in the companies array.

public class KitCompaniesTableViewController: UITableViewController {
    
    public var companies = [Company]()

    // MARK: - Table view data source

    override public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }

    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KitCompanyTableViewCell", for: indexPath) as! KitCompanyTableViewCell

        let comp = companies[indexPath.row]
        
        cell.set(name: comp.name, logoURL: comp.logoURL)

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? KitCompanyDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            detailViewController.company = companies[indexPath.row]
        }
    }
    

}
