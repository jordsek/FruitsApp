//
//  SettingRowView.swift
//  Fructus
//
//  Created by Jordan Isac on 17/05/2023.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil){
                    Text(content!)
                }else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "http://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "Jor/Jo")
        
    }
}
