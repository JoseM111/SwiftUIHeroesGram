import SwiftUI

// MARK: - Preview
struct FeedView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            FeedView(posts: PostObjectList())
        }
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct FeedView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @ObservedObject var posts: PostObjectList
    //∆..............................
    
    var body: some View {
        
        //.............................
        ScrollView(.vertical, showsIndicators: true, content: {
            //∆..........
            LazyVStack {
                //∆..........
                ForEach(posts.listOfPost) { post in
                    //∆..........
                    PostSubView(post: post)
                }
            }
            

        })// MARK: ||END__PARENT-ScrollView||
        .navigationBarTitle("Feed View")
        .navigationBarTitleDisplayMode(.inline)
        //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END: [STRUCT]

