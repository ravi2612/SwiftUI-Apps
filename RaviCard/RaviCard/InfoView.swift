//
//  InfoView.swift
//  RaviCard
//
//  Created by Ravi Navarro  on 15/10/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text)
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello ", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
