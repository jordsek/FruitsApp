//
//  LabelView.swift
//  Fructus
//
//  Created by Jordan Isac on 17/05/2023.
//

import SwiftUI

struct LabelView: View {
    //MARK: - PRPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
