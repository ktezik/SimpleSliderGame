//
//  ButtonWithAlert.swift
//  SimpleSliderGame
//
//  Created by Иван Гришин on 26.11.2021.
//

import SwiftUI

struct ButtonWithAlert: View {
    
    @State private var showAlert = false
    @Binding var randomNumber: Int
    @Binding var sliderValue: Int
    
    var body: some View {
        Button(action: { self.showAlert = true }) {
            Text("Проверь меня")
        }.alert(isPresented: $showAlert) {
            Alert(
                title: Text("Your Score"),
                message: Text("\(computeScore())"),
                dismissButton: .cancel(Text("OK")) {
                    randomNumber = Int.random(in: 0...100)
                }
            )
        }
    }
    private func computeScore() -> Int {
        let difference = abs(randomNumber - lround(Double(sliderValue)))
        return 100 - difference
    }
}


struct ButtonWithAlert_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithAlert(randomNumber: .constant(50), sliderValue: .constant(50))
    }
}
