//
//  ViewController.swift
//  To-do list
//
//  Created by Johann Pires on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

import UIKit

class ToDoItem {
    var name: String
    var completed: Bool
    
    init(name: String, completed: Bool = false) {
        self.name = name
        self.completed = completed
    }
}

class ToDoListViewController: UITableViewController {
    var toDoItems: [ToDoItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "To Do List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addToDo))
    }
    
    @objc func addToDo() {
        let alert = UIAlertController(title: "New To Do", message: "Enter the name of your new to do item:", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "To Do Name"
        }
        let addAction = UIAlertAction(title: "Add", style: .default) { (action) in
            guard let text = alert.textFields?.first?.text, !text.isEmpty else {
                return
            }
            self.toDoItems.append(ToDoItem(name: text))
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(addAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        let toDo = toDoItems[indexPath.row]
        cell.textLabel?.text = toDo.name
        cell.accessoryType = toDo.completed ? .checkmark : .none
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        toDoItems[indexPath.row].completed = !toDoItems[indexPath.row].completed
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

