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

func getAlbumData(searchTerm:String) {
    
    Alamofire.request(.GET, "https://api.spotify.com/v1/search?query=\(searchTerm)&limit=10&type=album")
        .responseJSON { response in

            let albumData = JSON(response.result.value!) //need to figure out exactly how this come isn
            //let userName = userData["name"].string!
                
            print(albumData)
                
//            let id = userData["id"].int!
//            let userFBid = "\(FBSDKAccessToken.currentAccessToken().userID)"
//            let userPic = userData["profile_pic"].string!
//            let msgStat = userData["messages_status"].string!
//            
//            let myUser = User(id:id, FBid:userFBid, name:userName, picUrl: userPic, msgStat: msgStat)
//            
//            CurrentUser.sharedInstance.user = myUser
//            
//            completionHandler(myUser)
        }

}