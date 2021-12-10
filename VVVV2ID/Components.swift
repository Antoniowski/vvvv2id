//
//  Components.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

struct ElementSelector: View{
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    var show: GenericInfos
    
    var body: some View{
        VStack{
            show.poster
                .resizable()
                .frame(width: UIScreen.screenWidth/5, height: UIScreen.screenHeight/6)
                .cornerRadius(cornerRadiusValue)
            Text(show.name)
                .font(.system(size: 10))
                .multilineTextAlignment(.center)
                .frame(width: UIScreen.screenWidth/5)
        }
        .shadow(color: .white, radius: 2, x: 0, y: 0)
    }
}




//VIEWS COMPONENTS


struct MainElement: View{
    var shows: [GenericInfos] = []
    
    var body: some View{
        TabView{
            ZStack(alignment: .bottomLeading){
                LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
                    .opacity(0.5)
                VStack(alignment: .leading, spacing: 2){
                    Text("Demon Slayer")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    Text("Anime - 24 episodi")
                        .foregroundColor(.white)
                    
                }.padding()
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3)
            .background(Image("DemonSlayerFullPic")
                            .resizable())
            
            ZStack(alignment: .bottomLeading){
                LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
                    .opacity(0.5)
                VStack(alignment: .leading, spacing: 2){
                    Text("Demon Slayer")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    Text("Anime - 24 episodi")
                        .foregroundColor(.white)
                    
                }.padding()
            }
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3)
            .background(Image("DemonSlayerFullPic")
                            .resizable())
        }
        .tabViewStyle(.page)
    }
}

//EPISODE ELEMENT

struct EpisodeSelector: View{
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    var show: GenericInfos
    var episode: Episode
    
    var body: some View{
        Button(action: {}, label: {
            HStack{
                VStack{
                    if(episode.isWatched == true){
                        Image(systemName: "checkmark")
                            .frame(height: UIScreen.screenHeight/7, alignment: .center)
                            .foregroundColor(.green)
                    }
                }
                .frame(width: UIScreen.screenWidth/20)
                VStack(alignment: .leading){
                    Text("Episodio \(episode.number) - \(episode.title)")
                        .bold()
                    Text("\(episode.description)")
                }
                .padding()
                Image(systemName: "play.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.screenWidth/4, height: UIScreen.screenHeight/20)
            }
            .frame(height: UIScreen.screenHeight/7)
        })
    }
}


struct EpisodeSelector_Preview: PreviewProvider {
    static var previews: some View {
        EpisodeSelector(show: evangelion, episode: evangelion.episodes[0])
    }
}
