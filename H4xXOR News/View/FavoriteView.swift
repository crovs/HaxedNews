import SwiftUI

struct FavoritesView: View {
    @ObservedObject var favoriteManager: FavoriteManager
    
    var body: some View {
        List(favoriteManager.favoritePosts) { post in
            NavigationLink(destination: DetailView(url: post.url)) {
                HStack(alignment: .top, spacing: 10) {
                    Text(String(post.points))
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding(.trailing, 5)
                    
                    VStack(alignment: .leading) {
                        Text(post.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Favorites")
    }
}
