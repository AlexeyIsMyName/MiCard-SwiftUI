//
//  ContentView.swift
//  MiCard SwiftUI
//
//  Created by ALEKSEY SUSLOV on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("AlekseySuslov")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 5)
                    )
                
                Text("Aleksey Suslov")
                    .font(Font.custom("Pacifico-regular", fixedSize: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.system(size: 30))
                Divider()
                InfoView(text: "+7 999 999 99 99", imageName: "phone.fill")
                InfoView(text: "aleksey@email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
