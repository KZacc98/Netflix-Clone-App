//
//  APICaller.swift
//  Netflix Clone App
//
//  Created by Kamil Zachara on 06/04/2022.
//

import Foundation

struct Constants {
    static let API_KEY = "7b5f76aa2b9e0be65775c840675fb1de"
    static let BASE_URL = "https://api.themoviedb.org"
    
}

enum APIError: Error{
    case failedToGetData
}

class APICaller{
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) ->Void){
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else{return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }catch{
                completion(.failure(error))
            }
            
        }
        
        task.resume()
        
    }
    
    
    
}
