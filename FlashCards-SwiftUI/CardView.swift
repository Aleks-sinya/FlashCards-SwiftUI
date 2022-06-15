//
//  CardView.swift
//  FlashCards-SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import SwiftUI

struct CardView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(height: 230)
                .cornerRadius(10)
                .padding(16)
            
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .bold()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Main Card", color: Color.init(red: 68 / 255, green: 41 / 255, blue: 182 / 255))
    }
}
