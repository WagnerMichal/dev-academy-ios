import SwiftUI
import MapKit

struct FeatureDetailView: View {
    let state: FeatureDetailViewState
    
    var body: some View {
        ScrollView {
            VStack {
                Text(state.featureType)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
                if let featureImageUrl = state.featureImageUrl {
                    AsyncImage(url: featureImageUrl) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.2), lineWidth: 1))
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(.horizontal)
                }
                Spacer(minLength: 20)
                if let featureCoordinate = state.featureCoordinate {
                    MapView(coordinate: featureCoordinate)
                        .frame(height: 300)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 1))
                        .padding(.horizontal)
                }
                Spacer()
            }
            .navigationTitle(state.featureTitle)
        }
    }
}

struct FeatureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureDetailView(state: FeatureDetailViewState(feature: Features.mock.features.first!))
    }
}
