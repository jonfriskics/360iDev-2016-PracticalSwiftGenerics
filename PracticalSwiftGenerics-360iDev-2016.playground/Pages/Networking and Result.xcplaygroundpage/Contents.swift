//: [Previous](@previous)

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

enum Result<T> {
    case success(T)
    case error(String)
}

func makeRequest(urlString: String, completionHandler:@escaping(Result<Data>) -> Void) {
    guard let url = URL(string: urlString) else { return completionHandler(.error("Invalid URL")) }
    
    let request = URLRequest(url: url)
    URLSession.shared.dataTask(with: request) { (data, response, error) in
        if error != nil {
            return completionHandler(.error(error!.localizedDescription))
        }
        
        guard let data = data else {
            return completionHandler(.error("No data in response"))
        }
        
        completionHandler(.success(data))
    }.resume()
}
makeRequest(urlString: "http://httpstat.us/200") { (result) in
    switch result {
    case .success(let responseData):
        let responseString = String(data: responseData, encoding: String.Encoding.ascii)!
        print("Got Data \(responseString)")
    case .error(let message):
        print("Error \(message)")
    }
}

//: [Next](@next)
