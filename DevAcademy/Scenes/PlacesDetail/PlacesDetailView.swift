import SwiftUI
import MapKit

struct PlaceDetailView: View {
    let state: PlacesDetailViewState
    
    var body: some View {
        ScrollView {
            VStack {
                Text(state.type)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
                AsyncImage(url: state.link) { image in
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
                Spacer(minLength: 20)
            }
            .navigationTitle(state.title)
        }
    }
}



struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(state: PlacesDetailViewState(feature: Feature.mock.first!))
    }
}

