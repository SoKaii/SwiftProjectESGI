//
//  TeamWebService.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class RoomWebService {
    
    func getRooms(completion: @escaping ([Room]) -> Void) -> Void {
        guard let roomURL = URL(string: "http://127.0.0.1:8000/api/rooms") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: roomURL) { (data,res,err) in
            guard let bytes = data,
                err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments)
                    as? [Any] else {
                        DispatchQueue.main.sync {
                            completion([])
                        }
            return
            }
            let rooms = json.compactMap { (obj) -> Room? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return RoomFactory.roomFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(rooms)
            }
        }
        task.resume()
    }
    
    func createRoom(room: Room, completion: @escaping (Bool) -> Void) -> Void {
           guard let roomURL = URL(string: "http://127.0.0.1:8000/api/rooms") else {
               return;
           }
           var request = URLRequest(url: roomURL)
           request.httpMethod = "POST"
           request.httpBody = try? JSONSerialization.data(withJSONObject: RoomFactory.dictionnaryFrom(room: room), options: .fragmentsAllowed)
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
