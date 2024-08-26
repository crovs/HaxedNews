import SwiftUI

class FavoriteManager : ObservableObject {
    
    @Published var favoritePosts : [Post] = []
 
    func toggleFavorite(_ post: Post    ) {
        if let index = favoritePosts.firstIndex(where: {$0.id == post.id}) {
            favoritePosts.remove(at: index)
        } else {
            favoritePosts.append(post)
        }
    }
    
    func isFavorite(_ post: Post) -> Bool {
            return favoritePosts.contains(where: { $0.id == post.id })
        }
    
}
