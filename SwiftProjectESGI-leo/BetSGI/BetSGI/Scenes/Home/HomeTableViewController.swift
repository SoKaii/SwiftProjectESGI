
import UIKit

class HomeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    enum Identifier: String {
        case rooms
    }
    
    let roomWebService: RoomWebService = RoomWebService()
    var rooms : [Room]!
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet var tableV: UITableView!
    
    class func newInstance(rooms: [Room] ) -> HomeTableViewController {
        let home = HomeTableViewController()
        home.rooms = rooms
        return home
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableV.register(UINib(nibName: "RoomTableViewCell", bundle: nil), forCellReuseIdentifier: Identifier.rooms.rawValue)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(touchCreate))
        self.tableV.dataSource = self
        
    }

    @objc func touchCreate() {
        let createRoom = CreateRoomViewController.newInstance()
        self.navigationController?.pushViewController(createRoom, animated: true)
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier.rooms.rawValue, for: indexPath) as! RoomTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.rooms.count //TODO Récupérer le nombre de room auquel l'utilisateur participe
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145.0
    }
  
}
