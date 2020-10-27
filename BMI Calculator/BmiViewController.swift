import UIKit

class BmiViewController: UIViewController {

    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var advice: UILabel!
    
     var bmiValue: String?
     var adviceValue: String?
     var color: UIColor?
     
     override func viewDidLoad() {
          super.viewDidLoad()
          bmi.text = bmiValue
          advice.text = adviceValue
          view.backgroundColor = color
     }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
