//
//  GameSlider.swift
//  SimpleSliderGame
//
//  Created by Иван Гришин on 27.11.2021.
//

import SwiftUI

struct GameSlider: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let color: UIColor
    let alpha: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
            HStack {
                Text("0")
                DecimalSlider(sliderValue: $currentValue, alpha: alpha, color: color)
                Text("100")
            }
            .padding()
        }
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameSlider(
            currentValue: .constant(50),
            targetValue: 100,
            color: .red,
            alpha: 100)
    }
}
