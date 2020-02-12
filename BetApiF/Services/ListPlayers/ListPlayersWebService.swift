//
//  ListPlayersWebService.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListPlayersWebService {
    
    func getListPlayers(completion: @escaping ([ListPlayers]) -> Void) -> Void {
        guard let listplayersURL = URL(string: "https://api.football-data.org/v2/teams/524") else {
            return;
        }
        var rq = URLRequest(url: listplayersURL)
        rq.addValue("aa9d9f3d5e1b48d698cdd42100aebfed", forHTTPHeaderField: "X-Auth-Token")
        let task = URLSession.shared.dataTask(with: rq) { (data, res, err) in
            guard let bytes = data,
                  err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [String: Any] else {
                completion([])
                return
            }
            print(json)
            let listplayers = json.compactMap { (obj) -> ListPlayers? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return ListPlayersFactory.listplayersFrom(dictionary: dict)
            }
            completion(listplayers)
        }
        task.resume()
    }
    
}
