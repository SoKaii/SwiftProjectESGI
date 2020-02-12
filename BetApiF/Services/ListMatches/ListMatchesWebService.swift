//
//  ListMatchesWebService.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListMatchesWebService {
    
    func getListMatches(completion: @escaping ([ListMatches]) -> Void) -> Void {
        guard let listmatchesURL = URL(string: "https://api.football-data.org/v2/competitions/2015/matches?season=2019") else {
            return;
        }
        var rq = URLRequest(url: listmatchesURL)
        rq.addValue("aa9d9f3d5e1b48d698cdd42100aebfed", forHTTPHeaderField: "X-Auth-Token")
        let task = URLSession.shared.dataTask(with: rq) { (data, res, err) in
            guard let bytes = data,
                  err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [String: Any] else {
                completion([])
                return
            }
            print(json)
            let listmatches = json.compactMap { (obj) -> ListMatches? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return ListMatchesFactory.listmatchesFrom(dictionary: dict)
            }
            completion(listmatches)
        }
        task.resume()
    }
    
}
