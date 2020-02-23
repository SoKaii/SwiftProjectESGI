//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class TeamWebService {
    
    func getTeams(completion: @escaping ([Team]) -> Void) -> Void {
        guard let teamURL = URL(string: "http://127.0.0.1:8000/api/teams") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: teamURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments)
                    as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let teams = json.compactMap { (obj) -> Team? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return TeamFactory.teamFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(teams)
            }
        }
        task.resume()
    }
    
}
