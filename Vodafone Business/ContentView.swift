//
//  ContentView.swift
//  Vodafone Business
//
//  Created by Malik Amajjoud on 17.06.22.
//

import SwiftUI
let strNumber = "+491722029770"
struct ContentView: View {
    var body: some View {
        NavigationView{
        ScrollView {
            Image("IM1").resizable().scaledToFit().cornerRadius(8).padding()
            Image("IM2").resizable().scaledToFit().cornerRadius(5).padding()
            Image("IM3").resizable().scaledToFit().cornerRadius(6).padding()
            Image("IM4").resizable().scaledToFit().cornerRadius(7).padding()
        }
        
        .shadow(radius: 20)
        .navigationBarItems(leading: Image("Logo")
            .resizable().padding(.all, 7.0).scaledToFit().position(x: 20, y: 30),
            trailing:
                                Button(action: {
            let tel = "tel://"
                let formattedString = tel + strNumber
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
        }) {
            Image(systemName: "phone.fill").foregroundColor(Color("VodaRot"))
        })
        .background(Image("Background").resizable())
        }.background(Image("Background"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
