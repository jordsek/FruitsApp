//
//  SettingsView.swift
//  Fructus
//
//  Created by Jordan Isac on 17/05/2023.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION1
                    
                    GroupBox(
                        label:
                            LabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have choresterol. Fruits are sources of many essengtial nutrients, including pottasium, dietary fiber, and much more")
                                .font(.footnote)
                            
                        }//HStack
                    }//BOX
                    
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: LabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                       // Divider().padding(.vertical,4)
                        SettingRowView(name: "Developer", content: "Jor/jo")
                        SettingRowView(name: "Designer", content: "Sam Kiyaga")
                        SettingRowView(name: "Compatibility", content: "IOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@SamKiyaga", linkDestination: "twitter.com/samkiyaga")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                        
                        
                        
                    }
                }//: VSTACK
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLL
        }//:Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
           // .preferredColorScheme(.dark)
    }
}
