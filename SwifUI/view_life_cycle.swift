// View Lifecycle - Swift 

// Execution States of a View: 
// 1. initializing: The view is being initialized, typically from a storyboard or a nib file.
// The initialization functions include init(coder:), init(frame:), and awakeFromNib().
// init(coder:) is called when the view is being initialized from a storyboard or a nib file.
// init(frame:) is called when the view is being initialized programmatically.
// awakeFromNib() is called after the view has been loaded from a nib file.

// 2. loading: The view is loading its subviews. This is done by calling the layoutSubviews() and draw() methods.
// layoutSubviews() is called when the view needs to layout its subviews. This is a good place to update the layout of the view's subviews.
// draw() is called when the view needs to draw its content. This is a good place to perform custom drawing.

// 3. Layout: The view is laying out its subviews. This is done by calling the layoutSubviews() method.
// layoutSubviews() is called when the view needs to layout its subviews. This is a good place to update the layout of the view's subviews.


// 4. appearing: The view is about to appear on the screen. This is done by calling the willMove(toSuperview:) and didMoveToSuperview() methods.
// willMove(toSuperview:) is called just before the view is added to a superview.
// didMoveToSuperview() is called after the view has been added to a superview.

// 5. disappearing: The view is about to disappear from the screen. This is done by calling the willMove(toSuperview:) and didMoveToSuperview() methods.
// willMove(toSuperview:) is called just before the view is removed from a superview.
// didMoveToSuperview() is called after the view has been removed from a superview.

// 6. deallocating: The view is being deallocated. This is done by calling the deinit() method.
// deinit() is called when the view is being deallocated. This is a good place to perform any cleanup before the view is deallocated.


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View did load")
        // Set the text of the greeting label
        greetingLabel.text = "Hello, World!"

        // Set the title of the button
        button.setTitle("Tap me!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue

        // gradient color 
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = button.bounds
        gradientLayer.colors = [UIColor.systemBlue.cgColor, UIColor.systemTeal.cgColor]
        button.layer.insertSublayer(gradientLayer, at: 0)
        

        // Add a target to the button
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)

    }

    //  on click of button
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button tapped")
        // Update the text of the greeting label
        greetingLabel.text = "Button tapped!"
        // reload 
        self.view.setNeedsDisplay()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("View will layout subviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("View did layout subviews")
    }

    deinit {
        print("Deinit")
    }


}

