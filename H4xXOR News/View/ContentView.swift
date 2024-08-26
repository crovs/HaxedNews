import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    @ObservedObject var favoriteManager = FavoriteManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    // Star Button for Favoriting
                    Button(action: {
                        favoriteManager.toggleFavorite(post)
                    }) {
                        Image(systemName: favoriteManager.isFavorite(post) ? "star.fill" : "star")
                            .foregroundColor(favoriteManager.isFavorite(post) ? .yellow : .gray)
                    }
                    
                    // Text and Details for Post
                    VStack(alignment: .leading, spacing: 5) {
                        Text(post.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                            .lineLimit(2)
                            .truncationMode(.tail)
                        
                        Text("\(post.points) points")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 5)
                    
                    Spacer()
                    
                    // Button for Navigating to Detail View
                    Button(action: {
                        if let url = URL(string: post.url!) {
                            // Open the URL if necessary
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Haxed News")
            .toolbar {
                NavigationLink(destination: FavoritesView(favoriteManager: favoriteManager)) {
                    Text("Favorites")
                }
            }
        }
        .padding(.horizontal)
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}
