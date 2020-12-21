import SwiftUI

// MARK: - Preview
struct CommentsView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            CommentsView()
        }
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

struct CommentsView: View {
    // MARK: - ∆Global-PROPERTIES
    //∆..............................
    @State var submissionText: String = ""
    @State var comments: [CommentModel] = []
    //∆..............................
    
    var body: some View {
        
        //.............................
        VStack(alignment: .center, spacing: nil, content: {
            
            ScrollView {
                
                ForEach(comments) { comment in
                    //∆..........
                    LazyVStack {
                        MessageSubView(comment: comment)
                    }
                    
                }
                
            }/// ∆ END OF: ScrollView
            
            HStack {
                
                // MARK: -∆  Profile-Circle-Image •••••••••
                Image("hood-thanos")
                    .circleImageFrame(
                        aspectR: .fill,
                        frameW: 40, frameH: 40)
                
                // MARK: -∆  Input-Field •••••••••
                TextField("Add a comment here...",
                          text: $submissionText)
                    .padding(.leading, 10)
                    .frame(height: 40)
                    .cornerRadius(12)
                
                // MARK: -∆  Button(SFSymbol-Image) •••••••••
                Button(action: {  }) {
                    //∆..... LABEL .....
                    Image(systemName: "paperplane.fill")
                }
                .font(.title2)
                .accentColor(.darkPurple)
                //∆ HANGER ™👕™ .................
                
            }// ∆ END OF: HStack
            .padding(.all, 10)
            //∆ HANGER ™👕™ .................
            
        })// MARK: ||END__PARENT-VSTACK||
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        // MARK: - onAppear
        //--|............................................
        .onAppear(perform: {
            //∆..........
            getComments()
        })
        //--|............................................
        
        //∆ HANGER ™👕™ .................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END OF: CommentsView

// MARK: -∆  extension CommentsView •••••••••

extension CommentsView {
    
    ///∆ ........... Functions ...........
    func getComments() -> Void {
        //∆..........
        let comment1 = CommentModel(
            commentID: "", userID: "",
            username: "Hood Thanos", content: "This is comment #1",
            dateCreated: Date())
        
        let comment2 = CommentModel(
            commentID: "", userID: "",
            username: "Jerry", content: "This is comment #2",
            dateCreated: Date())
        
        let comment3 = CommentModel(
            commentID: "", userID: "",
            username: "Jenny", content: "This is comment #3",
            dateCreated: Date())
        
        let comment4 = CommentModel(
            commentID: "", userID: "",
            username: "Lana", content: "This is comment #4",
            dateCreated: Date())
        
        comments.append(contentsOf: [comment1, comment2, comment3, comment4])
        //∆..........
        print("DEBUG: GET COMMENTS FROM THE DATABASE...")
    }
}
