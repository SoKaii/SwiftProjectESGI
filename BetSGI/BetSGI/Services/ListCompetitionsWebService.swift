//
//  ListCompetitionsWebService.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListCompetitionsWebService {
    
    func getListCompetitions(completion: @escaping ([ListCompetitions]) -> Void) -> Void {
        guard let listcompetitionsURL = URL(string: "https://api.football-data.org/v2/competitions") else {
            return;
        }
        //var rq = URLRequest(url: areasURL)
        //rq.addValue("XXXXX", forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: listcompetitionsURL) { (data, res, err) in
            guard let bytes = data,
                  err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [String: Any] else {
                completion([])
                return
            }
            print(json)
            let listcompetitions = json.compactMap { (obj) -> ListCompetitions? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return ListCompetitionsFactory.listcompetitionsFrom(dictionary: dict)
            }
            completion(listcompetitions)
        }
        task.resume()
    }
    
}
