

import UIKit
import CoreData

var noteList = [Note]()

class ToDoTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "ToDoTableViewCell", bundle: nil), forCellReuseIdentifier: "myToDoCell")
        
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noteCell = tableView.dequeueReusableCell(withIdentifier: "myToDoCell", for: indexPath) as! ToDoTableViewCell

        let thisNote: Note!
        thisNote = noteList[indexPath.row]
        
        noteCell.myLabel.text = thisNote.title
     
        return noteCell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteList.count
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
    
