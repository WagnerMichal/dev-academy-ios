//
//  PlacesScene.swift
//  DevAcademy
//
//  Created by Michal Wagner on 25.07.2023.
//

import SwiftUI
import ActivityIndicatorView
 
struct PlacesScene: View {
    @State var features: [Feature] = []
    @State var showFavorites = false
    var body: some View {
        NavigationStack{
            Group{
            if !features.isEmpty{
                List(features, id: \.properties.ogcFid) {
                    feature in
                    NavigationLink(destination: PlacesRow(feature: feature)){
                        Text(feature.properties.nazev)
                    }
                }
                .animation(.default, value: features)
                .listStyle(.plain)
            } else{
                ActivityIndicatorView(isVisible: .constant(true),
                type: .growingCircle)
            }

        }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: onButtonTapped){
                        Text("Favorites")
                    }
                }
                
            })
            .navigationTitle("Kultůrmapa")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear(perform: fetch)
        .sheet(isPresented: $showFavorites){
            Text("Nothing here")
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
        }
    }
    func onButtonTapped(){
        showFavorites = true
    }
    func fetch(){
        DataService.shared.fetchData{ result in
            switch result {
            case .success(let features):
                self.features = features.feature
            case .failure(let error):
                print(error)
            }
        }
    }
}

struct PlacesScene_Previews: PreviewProvider {
    static var previews: some View {
        PlacesScene()
    }
}
