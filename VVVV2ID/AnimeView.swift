//
//  AnimeView.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 10/12/21.
//

import SwiftUI

struct AnimeView: View{
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    var body: some View{
        ScrollView{
//          SEZIONE NOVITA'
            MainElement()
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3)
                .border(.red)
            
//          FIRST SCROLLVIEW
            VStack{
                HStack{
                    Text("Continua a guardare")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0...9, id: \.self){_ in
                            ElementSelector(show: evangelion)
                        }
                    }
                    .padding(2)
                }
                .frame(width: UIScreen.screenWidth)
                .padding(.horizontal)
            }
            .frame(alignment: .leading)
            
            
//            SECOND SCROLLVIEW
            VStack{
                HStack{
                    Text("Nuove Uscite")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0...9, id: \.self){_ in
                            ElementSelector(show: evangelion)
                        }
                    }
                    .padding(2)
                }
                .frame(width: UIScreen.screenWidth)
                .padding(.horizontal)
            }
            .frame(alignment: .leading)
        }
    }
}

