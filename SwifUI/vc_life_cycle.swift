// View Controll Lifecycle - Swift

// Execution States of a View Controller: 
// 1. initializing: The view controller is being initialized, typically from a storyboard or a nib file.
// The initialization functions include init(coder:), init(nibName:bundle:), and awakeFromNib().
// init(coder:) is called when the view controller is being initialized from a storyboard or a nib file.
// init(nibName:bundle:) is called when the view controller is being initialized from a nib file.
// awakeFromNib() is called after the view controller has been loaded from a nib file.

// 2. loading: The view controller is loading its view hierarchy. This is done by calling the loadView() and viewDidLoad() methods.
// loadView() is called when the view controller needs to load its view hierarchy. If the view controller is loaded from a storyboard or a nib file, this method is not called.
// viewDidLoad() is called after the view controller's view hierarchy has been loaded. This is a good place to perform any additional setup after the view has been loaded.

// 3. appearing: The view controller is about to appear on the screen. This is done by calling the viewWillAppear(), viewDidAppear(), viewWillLayoutSubviews(), and viewDidLayoutSubviews() methods.
// viewWillAppear() is called just before the view controller's view is added to the view hierarchy.
// viewDidAppear() is called after the view controller's view has been added to the view hierarchy.
// viewWillLayoutSubviews() is called just before the view controller's view is laid out.
// viewDidLayoutSubviews() is called after the view controller's view has been laid out.

// 4. disappearing: The view controller is about to disappear from the screen. This is done by calling the viewWillDisappear() and viewDidDisappear() methods.
// viewWillDisappear() is called just before the view controller's view is removed from the view hierarchy.
// viewDidDisappear() is called after the view controller's view has been removed from the view hierarchy.

// 5. unloading: The view controller is unloading its view hierarchy. This is done by calling the viewDidUnload() method.
// viewDidUnload() is called when the view controller's view hierarchy is being unloaded. This method is deprecated in iOS 6.0 and later.

// 6. deallocating: The view controller is being deallocated. This is done by calling the deinit() method.
// deinit() is called when the view controller is being deallocated. This is a good place to perform any cleanup before the view controller is deallocated.

// The following code snippet demonstrates the life cycle of a view controller in Swift:

