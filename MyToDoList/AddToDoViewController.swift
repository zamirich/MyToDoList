//
//  AddToDoViewController.swift
//  MyToDoList
//
//  Created by Zamir Argashokov on 15.06.2021.
//


import UIKit

protocol AddToDoViewControllerDelegate {
    func addToDoViewController(_ addToDoViewController: AddToDoViewController, didAddToDo toDo: String)
}

class AddToDoViewController: UIViewController {

    var newTask = "A"
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet var tableView: UITableViewController!
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.textField.resignFirstResponder()
        
        if self.textField.text == "" {
            //TODO - right now in case of empty field - save button will do nothing, so need to make it more sophisticated
        } else {
            print(newTask)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        
        //dismiss not only hiding current screen, but other screens behind in case they are shown modally
        self.dismiss(animated: true, completion: nil)
        
        /*the below is example of writing a code to open a new, or existing viewcontroller
         
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "toDoVC")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
         
         */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
