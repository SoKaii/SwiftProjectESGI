//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class PlayerWebService {
    
    func getPlayers(completion: @escaping ([Player]) -> Void) -> Void {
        guard let playerURL = URL(string: "http://127.0.0.1:8000/api/players") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: playerURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments)
                    as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let players = json.compactMap { (obj) -> Player? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return PlayerFactory.playerFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(players)
            }
        }
        task.resume()
    }
    
}
