
let intQueue = Queue<Int>()
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
intQueue.count      // 0
intQueue.isEmpty    // true


var intQueueStruct = QueueStruct<Int>()
intQueueStruct.enqueue(1) // [1]
intQueueStruct.enqueue(2) // [1, 2]
intQueueStruct.enqueue(3) // [1, 2, 3]

intQueueStruct.peek       // 1
intQueueStruct.dequeue()  // 1
intQueueStruct.count      // 2
intQueueStruct.isEmpty    // false

intQueueStruct.dequeue()  // 2
intQueueStruct.dequeue()  // 3
intQueueStruct.peek       // nil
intQueueStruct.count      // 0
intQueueStruct.isEmpty    // true
