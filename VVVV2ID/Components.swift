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
                        .foregroundColor(.secondary)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
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


//SEARCH ELEMENT

struct SearchElement: View{
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    var show: GenericInfos
    var showGenres: String{
        var appoggio: String = ""
        for x in 0..<show.genres.count{
            if(x == show.genres.count-1){
                appoggio += "\(show.genres[x])"
            }else{
                appoggio += "\(show.genres[x]), "
            }
        }
        return "\(appoggio)"
    }
    var body: some View{
        HStack(spacing: 15){
            show.poster
                .resizable()
                .scaledToFit()
                .cornerRadius(cornerRadiusValue)
                .shadow(color: .white, radius: 1, x: 0, y: 0)
            
            VStack(alignment: .leading){
                Text("\(show.name)")
                    .font(.title3)
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text("**Genere:** \(showGenres) \n**Anno:** \(show.yearOfRelease) \n**Regista:** \(show.director)").font(.caption).foregroundColor(.secondary)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            VStack{
                if show.watched == true{
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                }
                
            }
            .frame(width: UIScreen.screenWidth/20, height: 5, alignment: .center)
            .padding(5)
        }
        .frame(height: UIScreen.screenHeight/8)
        .padding(5)
    }
}


struct SearchElement_Preview:
    PreviewProvider {
    static var previews: some View {
        SearchElement(show: evangelion)
    }
}
