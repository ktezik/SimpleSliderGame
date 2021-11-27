//
//  DecimalSlider.swift
//  SimpleSliderGame
//
//  Created by Иван Гришин on 26.11.2021.
//

import SwiftUI

struct DecimalSlider: UIViewRepresentable {
    
    @Binding var sliderValue: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .blue
        slider.thumbTintColor = .red
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(sliderValue)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(sliderValue: $sliderValue)
    }
}

extension DecimalSlider {
    class Coordinator: NSObject {
        @Binding var sliderValue: Int
        
        init(sliderValue: Binding<Int>) {
            self._sliderValue = sliderValue
        }
    }
}

struct DecimalSlider_Previews: PreviewProvider {
    static var previews: some View {
        DecimalSlider(sliderValue: .constant(100))
    }
}
