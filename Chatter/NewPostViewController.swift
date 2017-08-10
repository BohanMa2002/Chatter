//  NewPostViewController.swift
//  Chatter


import UIKit

class NewPostViewController: UIViewController {
    
    var post: Post!
    
    @IBOutlet weak var postTitle: UITextField!
    @IBOutlet weak var postSubject: UITextField!
    @IBOutlet weak var postStart: UIDatePicker!
    @IBOutlet weak var postEnd: UIDatePicker!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SaveNewPost" {
            
            post = Post(title: self.postTitle.text!, dateStart: self.postStart.date as NSDate, dateEnd : self.postEnd.date as NSDate, subject: self.postSubject.text!)
        }
    }
}
