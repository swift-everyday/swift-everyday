//
//  ContentView.swift
//  Video-2-start
//
//  Created by Studio on 8/5/21.
//

import SwiftUI

enum AppColor: String, CaseIterable  {
    case orange = "orange"
    case green = "green"
    case blue = "blue"
    case red = "red"
    
    func callAsFunction() -> String {
        self.rawValue
    }
}

struct ContentView: View {
    @State private var selectedColor: AppColor = AppColor.orange
    var body: some View {
        VStack {

            Text(selectedColor())
            
            Picker("Color", selection: $selectedColor) {
                ForEach(AppColor.allCases, id: \.self) { appColor in
                    Text(appColor())
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
