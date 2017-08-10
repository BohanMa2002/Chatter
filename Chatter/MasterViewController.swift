//  MasterViewController.swift
//  Chatter

import UIKit

class MasterViewController: UITableViewController {
    
    var detailViewController: DetailViewController? = nil
    var objects = [Any]()
    
    var posts = postArray

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func cancelToMainMenu(segue: UIStoryboardSegue)
    {
        
    }
    
    @IBAction func saveNewPost(segue: UIStoryboardSegue) {
        
        let newPostViewController = segue.source as! NewPostViewController
        
        posts.insert(newPostViewController.post, at: 0)
        
        let indexPath = IndexPath(row: 0, section: 0)
        
        tableView.insertRows(at: [indexPath as IndexPath], with: .automatic)
    }
    
    
    func insertNewObject(_ sender: Any) {
        
        objects.insert(NSDate(), at: 0)
        
        let indexPath = IndexPath(row: 0, section: 0)
        
        self.tableView.insertRows(at: [indexPath], with: .automatic)
        
    }
    
    
    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let object = posts[indexPath.row]
                
                (segue.destination as! DetailViewController).detailItem = object
                
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostCellTableViewCell
        
        let post = posts[indexPath.row]
        
        //cell.imageView?.image = UIImage(named: "Green")
        
        cell.postTextLabel.text = post.subject
        
        //cell.dateLabel.text = DateFormatter.localizedString(from: post.dateStart as Date, dateStyle: .short, timeStyle: .short)
        
        cell.endDate.text = DateFormatter.localizedString(from: post.dateEnd as Date, dateStyle: .short, timeStyle: .short)
        
        cell.userNameLabel.text = post.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        // Return false if you do not want the specified item to be editable.
        
        return true
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
    }
}
