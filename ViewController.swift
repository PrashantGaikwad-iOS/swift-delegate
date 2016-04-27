
import UIKit

class ViewController: UIViewController,ViewController1Delegate
{
    @IBOutlet var myTextF: UITextField?

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func myVCDidFinish(controller: ViewController1, text: String)
    {
        let  data = text
        print(data)
        if !data.isEmpty
        {
            myTextF!.text = data
            controller.navigationController!.popViewControllerAnimated(true)
        }
        
        
       
    }
    
    
    @IBAction func gotoAction(sender: AnyObject)
    {
        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController1") as! ViewController1
        secondViewController.delegate = self
        self.navigationController!.pushViewController(secondViewController, animated: true)
    }

}

