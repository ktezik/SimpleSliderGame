//
//  ContentView.swift
//  SimpleSliderGame
//
//  Created by Иван Гришин on 26.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var randomNumber: Int = Int.random(in: 0...100)
    @State var sliderValue = 50
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(randomNumber)")
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
            .padding()
            HStack {
                Text("0")
                DecimalSlider(sliderValue: $sliderValue)
                Text("100")
            }
            .padding()
            
            ButtonWithAlert(randomNumber: $randomNumber, sliderValue: $sliderValue)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
