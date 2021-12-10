//
//  AnimeView.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 10/12/21.
//

import SwiftUI

struct AnimeView: View{
    var body: some View{
        ScrollView{
            HStack{
                
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3)
            .border(.red)
            
            ScrollView(.horizontal){
                
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/5)
            .border(.red)
            
            ScrollView{
                
            }
        }        
    }
}

