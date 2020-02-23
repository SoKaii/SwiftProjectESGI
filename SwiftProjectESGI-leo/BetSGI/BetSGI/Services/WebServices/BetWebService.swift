//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class BetWebService {
    
    func getBets(completion: @escaping ([Bet]) -> Void) -> Void {
        guard let betURL = URL(string: "http://127.0.0.1:8000/api/bets") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: betURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments)
                    as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let bets = json.compactMap { (obj) -> Bet? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return BetFactory.betFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(bets)
            }
        }
        task.resume()
    }
    
    func createBet(bet: Bet, completion: @escaping (Bool) -> Void) -> Void {
            guard let betURL = URL(string: "http://127.0.0.1:8000/api/bets") else {
                return;
            }
            var request = URLRequest(url: betURL)
            request.httpMethod = "POST"
            request.httpBody = try? JSONSerialization.data(withJSONObject: BetFactory.dictionnaryFrom(bet: bet), options: .fragmentsAllowed)
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
