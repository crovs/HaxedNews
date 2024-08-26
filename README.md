# Haxed News

Haxed News is a simple yet effective news app built with SwiftUI, aimed at helping me master key concepts in iOS development. Through this project, I explored various SwiftUI components, networking, data management, and integration of UIKit components within a SwiftUI framework. The app fetches news articles from the web and allows users to view them, with additional features like saving favorites.

## Features

- **Article List with Identifiable Protocol**: Display a list of articles using SwiftUI's `List` view, leveraging the `Identifiable` protocol to ensure each item is uniquely identifiable.
- **Networking with SwiftUI**: Fetch news articles from the web using `URLSession`, and parse JSON data to populate the list of articles.
- **Observer Design Pattern**: Implemented the observer pattern using `ObservableObject` to manage and update the UI in response to data changes.
- **UIKit Integration**: Embedded UIKit components within SwiftUI views to handle tasks like displaying web content in a `WKWebView`.
- **Favorites Management**: Save and manage favorite articles using a custom `FavoriteManager`.

## Key Learning Objectives

1. **Understanding the List and Identifiable Protocol**:
   - Utilized SwiftUI's `List` to display articles and the `Identifiable` protocol to ensure efficient rendering of items.
   
2. **Networking in SwiftUI**:
   - Learned to make network requests using `URLSession`, fetch data from an API, and decode JSON responses into Swift models.

3. **The Observer Design Pattern**:
   - Implemented `ObservableObject` and `@Published` properties to ensure that the UI automatically reflects changes in the underlying data.

4. **Using UIKit Components with SwiftUI**:
   - Integrated a `WKWebView` inside SwiftUI to display web pages, showing how to bridge UIKit and SwiftUI effectively.

## File Structure

- **ContentView.swift**: The main view displaying the list of articles fetched from the API.
- **DetailView.swift**: A detailed view of a selected article, including options to view the article in a web browser.
- **WebView.swift**: A SwiftUI wrapper around `WKWebView` to display web content.
- **FavoriteView.swift**: A view dedicated to displaying favorite articles saved by the user.
- **NetworkManager.swift**: Handles all networking tasks, including making API calls and decoding JSON data.
- **PostData.swift**: Model representing the article data structure.
- **FavoriteManager.swift**: Manages the saving, retrieving, and displaying of favorite articles.

## Installation

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the project on your preferred device or simulator.

## Future Improvements

- **Search Functionality**: Add a search feature to filter news articles based on keywords.
- **Offline Access**: Implement offline access to saved articles using CoreData.
- **Push Notifications**: Introduce push notifications to alert users about breaking news.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

## License

This project is open-source and available under the MIT License.

