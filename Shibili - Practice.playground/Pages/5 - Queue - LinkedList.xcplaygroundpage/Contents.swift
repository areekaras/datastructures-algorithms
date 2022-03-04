var intQueue = Queue<Int>()
intQueue.enqueue(1) // [1]
intQueue.enqueue(2) // [1, 2]
intQueue.enqueue(3) // [1, 2, 3]

intQueue.peek       // 1
intQueue.dequeue()  // 1
intQueue.count      // 2
intQueue.isEmpty    // false

intQueue.dequeue()  // 2
intQueue.dequeue()  // 3
intQueue.peek       // nil
intQueue.dequeue()  // nil
intQueue.count      // 0
intQueue.isEmpty    // true
