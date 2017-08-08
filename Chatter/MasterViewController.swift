//
//  MasterViewController.swift
//  Chatter
//
//  Created by iD Student on 8/8/17.
//  Copyright © 2017 BohanMa. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var detailViewController: DetailViewController? = nil
    var objects = [Any]()
    
    
    
    @IBAction func cancelButtonToMainMenu (segue: UIStoryboardSegue)
    {
        
    }
    @IBAction func doneButtonToSaveNewPost (segue: UIStoryboardSegue)
    {
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc
    func insertNewObject(_ sender: Any) {
        objects.insert(NSDate(), at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: - Segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        /*  if segue.identifier == "showDetail" {
         if let indexPath = tableView.indexPathForSelectedRow {
         let object = objects[indexPath.row] as! NSDate
         let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
         controller.detailItem = object
         controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
         controller.navigationItem.leftItemsSupplementBackButton = true
         }
         } */
    }
    
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var posts = postArray
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let posts = self.posts[indexPath.row] as! Post
        cell.textLabel!.text = posts.text
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
    }
}


