//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class MatcheWebService {
    
    func getMatches(completion: @escaping ([Matche]) -> Void) -> Void {
        guard let matcheURL = URL(string: "http://127.0.0.1:8000/api/matches") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: matcheURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments)
                    as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let matches = json.compactMap { (obj) -> Matche? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return MatcheFactory.matcheFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(matches)
            }
        }
        task.resume()
    }
    
}
