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
    @EnvironmentObject var recentSeries: RecentSeriesContainer
        
    var body: some View{
        ScrollView{
//          SEZIONE NOVITA'
            MainElement()
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3)
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
                    HStack(spacing: 10){
                        ForEach(recentSeries.GetAllSeries(), id: \.self){anime in
                            ElementSelector(show: anime)
                        }
                    }
                    .padding(.init(top: 2, leading: 4, bottom: 2, trailing: 4))
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
                    HStack(spacing: 10){
                        ForEach(seriesContainer.GetAllSeries(), id: \.self){anime in
                            ElementSelector(show: anime)
                        }
                    }
                    .padding(.init(top: 2, leading: 4, bottom: 2, trailing: 4))
                }
                .frame(width: UIScreen.screenWidth)
                .padding(.horizontal)
            }
            .frame(alignment: .leading)
        }
    }
}

