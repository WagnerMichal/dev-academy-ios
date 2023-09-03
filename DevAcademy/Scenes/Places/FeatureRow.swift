import SwiftUI

struct FeatureRow: View {
    let feature: Feature

    var body: some View {
        HStack {
            AsyncImage(url: feature.attributes.imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 4)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(feature.attributes.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                Text(feature.attributes.type.rawValue)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
        }
    }
}


struct FeatureRow_Previews: PreviewProvider {
    static var previews: some View {
        FeatureRow(feature: Features.mock.features[0])
    }
}