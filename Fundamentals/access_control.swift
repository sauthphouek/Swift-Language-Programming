// Swift - Access Control
// In Swift, access control restricts the access of 
// classes, structures, enumerations, and protocols to
//  the code in other source files and modules. 
//  This feature enables you to hide the implementation 
//  details of your code and to specify a preferred 
//  interface through which that code can be accessed and used.

// Access control is an important aspect of object-oriented programming.
// It allows you to protect the internal implementation of your code from 
// being accessed by other code in the same or different modules.

// In Swift, provides five different access levels for
//  classes, structures, enumerations, and protocols.

//   These access levels are:
//  1. Open access level : Open access level is the highest access level that you can
//  define in Swift. It allows a class to be subclassed and its methods and properties to be overridden by subclasses.

//  2. Public access level : Public access level enables entities to be used within any 
// source file from their defining module, and also in a different module that imports 
// the defining module.

//  3. Internal access level : Internal access level enables entities to be used within any
//  source file from their defining module, but not in any source file outside of that module.

//  4. File-private access level : File-private access level restricts the
//  use of an entity to its own defining source file.

//  5. Private access level : Private access level restricts the 
// use of an entity to the enclosing declaration. 

// Access Control Syntax
// You can specify the access level for a class, structure, enumeration, or protocol by
//  using the access level modifier keyword (open, public, internal, file-private, or private)

// Syntax
open class SomeOpenClass {
    // open class definition
    
}

public class SomePublicClass {
    // public class definition
}

internal class SomeInternalClass {
    // internal class definition
}

fileprivate class SomeFilePrivateClass {
    // file-private class definition
}

private class SomePrivateClass {
    // private class definition
}

// Access Control for Properties, Methods, and Subscripts
// You can also specify the access level for properties, methods, 
// and subscripts by using the access level modifier keyword 
// (open, public, internal, file-private, or private)

// Syntax
open class SomeOpenClass {
    open var someOpenProperty: Int = 0
    open func someOpenMethod() {
        // open method implementation

    }
}

public class SomePublicClass {
    public var somePublicProperty: Int = 0
    public func somePublicMethod() {
        // public method implementation
    }
}

internal class SomeInternalClass {
    internal var someInternalProperty: Int = 0
    internal func someInternalMethod() {
        // internal method implementation
    }
}


fileprivate class SomeFilePrivateClass {
    fileprivate var someFilePrivateProperty: Int = 0
    fileprivate func someFilePrivateMethod() {
        // file-private method implementation
    }
}

private class SomePrivateClass {
    private var somePrivateProperty: Int = 0
    private func somePrivateMethod() {
        // private method implementation
    }
}


