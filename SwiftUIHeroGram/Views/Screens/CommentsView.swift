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
    //∆..............................
    
    
    var body: some View {
        
        //.............................
        VStack(alignment: .center, spacing: nil, content: {
            
            ScrollView {
                
                ForEach(0...100, id: \.self) { _ in
                    //∆..........
                    LazyVStack {
                        iAmHere(myStr: "PlaceHolder")
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
        //.............................
        
    }// MARK: |_End Of body_|
    /*©-----------------------------------------©*/
    
}// MARK: END OF: CommentsView

/*©-----------------------------------------©*/

