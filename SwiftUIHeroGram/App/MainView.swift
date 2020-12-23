import SwiftUI

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

// MARK: -∆  STRUCT •••••••••
struct MainView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
   var feedComponent: some View {
        //∆..........
        NavigationView {
            //∆..........
            FeedView(posts: PostObjectList(), title: "Feed")
        }
        .tabItem {
            Image(systemName: "book.fill")
            Text("Feed")
        }
        
        
    }/// ∆ END OF: feedComponent
    
    var browseComponent: some View {
        //∆..........
        NavigationView {
            //∆..........
            BrowseView()
        }
        .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Browse")
        }
    }/// ∆ END OF: browseComponent
    //∆..............................
    
    /*©-----------------------------------------©*/
    
}// MARK: END: [STRUCT]
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

// MARK: -∆  EXTENSION OF: MainView •••••••••
extension MainView {
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        //.............................
        TabView {
            
            // MARK: -∆  FeedView •••••••••
            feedComponent
            
            // MARK: -∆  BrowseView •••••••••
            browseComponent
            
            Text("Screen-3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            Text("Screen-4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            
            
        }// MARK: ||END__PARENT-TabView||
        .accentColor(.darkPurple)
        //.............................
        
    }// MARK: |_End Of body_|
}// MARK: END OF: MainView

// MARK: Helper Function
func iAmHere(myStr: String) -> some View {
    return Text("\(myStr)")
        .font(.system(size: 22))
        .foregroundColor(.white)
        .bold()
        .background(Color.black)
}
