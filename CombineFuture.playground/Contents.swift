import Foundation
import Combine

func asyncProcess(number: Int, completion:@escaping (_ number: Int) -> Void) {
        let queue = DispatchQueue.global(qos: .default)
        queue.async {
            let n = arc4random() % 10 + 1
            print("task \(number): sleep\(n)")
            sleep(n)
            completion(number)
        }
}

var publisher1 = Future<String, Error> { promise in
    asyncProcess(number: 1, completion: { n in
        promise(.success("task \(n) success"))
    })
}
var publisher2 = Future<String, Error> { promise in
    asyncProcess(number: 2, completion: { n in
        promise(.success("task \(n) success"))
    })
}

var publisher3 = Future<String, Error> { promise in
    asyncProcess(number: 3, completion: { n in
        promise(.success("task \(n) success"))
    })
}

let publishers = publisher1.merge(with: publisher2, publisher3)
    .sink(receiveCompletion: { completion in
        switch completion {
        case .finished:
            print("finish")
        case .failure(_):
            print("error")
        }

    }, receiveValue: { value in
        print(value)
    })
