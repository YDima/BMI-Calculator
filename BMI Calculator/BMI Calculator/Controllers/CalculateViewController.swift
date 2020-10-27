import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        height.text = "\(heightValue)m"
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        weight.text = "\(weightValue)kg"
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSliderValue.value
        let weight = weightSliderValue.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "calculateBmi", sender: self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "calculateBmi" {
               let destinationVC = segue.destination as! BmiViewController
               destinationVC.bmiValue = calculatorBrain.getBMIValue()
               destinationVC.adviceValue = calculatorBrain.getAdvice()
               destinationVC.color = calculatorBrain.getColor()
          }
     }
}
