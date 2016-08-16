//
//  GetAlbumData.swift
//  Searchify
//
//  Created by Lauren Granger on 8/14/16.
//  Copyright © 2016 Lauren Granger. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

// takes in user imput to search bar, saves results to a dict for display

func getAlbumData(searchTerm:String, completionHandler:(Array<Array<String>>)->()) {
    
    var albumArray = Array<Array<String>>()
    
    Alamofire.request(.GET, "https://api.spotify.com/v1/search?query=\(searchTerm)&limit=10&type=album")
        .responseJSON { response in

            let albumData = JSON(response.result.value!["albums"]!!["items"]!!)
            
            for i in 0...9 {
            
                let name = albumData[i]["name"].string!
                let spotifyUrl = albumData[i]["external_urls"]["spotify"].string!
                let imageUrl = albumData[i]["images"][0]["url"].string!
                
                albumArray.append([name, spotifyUrl, imageUrl])

            }
            
            completionHandler(albumArray)

        }

}