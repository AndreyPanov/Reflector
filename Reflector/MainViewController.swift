class MainViewController: ViewController {
  
  @IBOutlet weak var firstHeaderLabel: UILabel!
  @IBOutlet weak var secondBodyLabel: UILabel!
  @IBOutlet weak var loginTextField: UITextField!
  @IBOutlet weak var secondLoginTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Hello"
  }
}
