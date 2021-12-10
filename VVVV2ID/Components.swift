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


struct ElementSelector_Preview: PreviewProvider {
    static var previews: some View {
        ElementSelector(show: evangelion)
    }
}
