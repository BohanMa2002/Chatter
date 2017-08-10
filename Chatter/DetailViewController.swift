//  DetailViewController.swift
//  Chatter


import UIKit

class DetailViewController: UIViewController {
    
    //@IBOutlet weak var detailUserNameLabel: UITextField!
    //@IBOutlet weak var detailDescriptionLabel: UITextField!
   // @IBOutlet weak var startDate: UIDatePicker!
   // @IBOutlet weak var dueDate: UIDatePicker!
    
    
    var detailItem: Post? {
        didSet {
            self.configureView()
        }
    }
    
    func configureView() {
        
        var post = detailItem
        
        //detailDescriptionLabel?.text = post?.text
        //detailUserNameLabel?.text = post?.userName
        //startDate.date = post?.date as! Date
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
}

