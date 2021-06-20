
import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveButtonTapped(_ sender: Any) {

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: context)
        let newNote = Note(entity: entity!, insertInto: context)
        newNote.title = textField.text
        
        
        do {
            try context.save()
            noteList.append(newNote)
            dismiss(animated: true, completion: nil)
            print(noteList[0].title!)
        } catch {
            print("error")
        }
                
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
