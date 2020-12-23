import SwiftUI

// MARK: - Preview
struct ImageGridSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ImageGridSubView()//.padding(.all, 100)
            //.preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 430))
        
    }
}
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

struct ImageGridSubView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @ObservedObject var posts = PostObjectList()
    //∆..............................
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        //.............................
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ],
            alignment: .center, spacing: nil, pinnedViews: [], content: {
                //∆..........
                ForEach(posts.listOfPost, id: \.self) { post in
                    //∆..........
                    NavigationLink(
                        destination: FeedView(
                            posts: PostObjectList(post: post),
                            title: "Post"),
                        label: {
                            PostSubView(
                                post: post,
                                showHeaderAndFooter: false,
                                frameWidth: 130,
                                frameHeight: 200)
                        })
                }
                
            })// MARK: ||END__PARENT-LazyVGrid||
        
        //.............................
        
    }// MARK: |||END OF: body|||
    
    
}// MARK: END OF: ImageGridSubView
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

