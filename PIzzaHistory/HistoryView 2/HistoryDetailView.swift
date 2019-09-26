//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/18/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    var historyItem:HistoryItem
    @Binding var imageID:Int
    @State var isMapPresented = false
    var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
           
           MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 1000000)
            .frame(height:100)
            PresentMapButton(isPresented: $isMapPresented, historyItem: historyItem)
            Text(historyItem.history)
                .frame(height:300)
            
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
