//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class UserWebService {
    
    func getUsers(completion: @escaping ([User]) -> Void) -> Void {
        guard let userURL = URL(string: "http://127.0.0.1:8000/api/users") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: userURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let users = json.compactMap { (obj) -> User? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return UserFactory.userFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(users)
            }
        }
        task.resume()
    }
    
    func createUser(user: User, completion: @escaping (Bool) -> Void) -> Void {
            guard let userURL = URL(string: "http://127.0.0.1:8000/api/users") else {
                return;
            }
            var request = URLRequest(url: userURL)
            request.httpMethod = "POST"
            request.httpBody = try? JSONSerialization.data(withJSONObject: UserFactory.dictionnaryFrom(user: user), options: .fragmentsAllowed)
            request.setValue("application/json", forHTTPHeaderField: "content-type")
            let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, res, err) in
                if let httpRes = res as? HTTPURLResponse {
                    completion(httpRes.statusCode == 201)
                }
                completion(false)
            })
            task.resume()
        }
    
}
