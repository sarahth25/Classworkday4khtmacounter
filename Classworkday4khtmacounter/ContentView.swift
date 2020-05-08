//
//  ContentView.swift
//  Classworkday4khtmacounter
//
//  Created by sarah alshammari on 5/8/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        ZStack {
            BG()
            VStack{
                Text("تحتاح الى "+" \(counter*20)" + " عدد الصفحات التي سوف تقرأها يوميا").foregroundColor(.white)
                Stepper("كم ختمه تريد ", value: $counter, in: 0...10).foregroundColor(.white).padding()
                HStack{
                Text(khatma(counter).0)
                          .foregroundColor(.white)
                          .padding()
                          .font(.largeTitle)
                  
                    Text(khatma(counter).1)

                }}
        }
    }
    func khatma(_ counter: Int) -> (String, String)
       {
           switch counter{
           case 1: return ("ختمة واحدة", "")
           case 2: return ("ختمتان", "")
           case 3...10: return ("ختمات", "\(counter)")
           default: return("ختمة", "\(counter)")
           }
       }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BG: View {
    var body: some View {
        ZStack{Image("BACKGROUND")
            .resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Image("Mosque")
                    .resizable()
                    .scaledToFit()
                
            }}
    }
}
