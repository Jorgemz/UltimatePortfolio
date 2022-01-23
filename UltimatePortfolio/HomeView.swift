//
//  HomeView.swift
//  UltimatePortfolio
//
//  Created by 🤨 on 21/01/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var dataController: DataController
    @State private var alertIsVisible: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Button("Add Data") {
                    dataController.deleteAll()
                    try? dataController.createSampleData()
                    alertIsVisible = true
                }
            }
        }
        .navigationTitle("House")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
