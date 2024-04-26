public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?

    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public var head: LinkedListNode<T>?

    public init() {}

    // Methods to add, remove nodes etc
}
