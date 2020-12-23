import SwiftUI

class PostObjectList: ObservableObject {
    // MARK: - @PROPERTIES
    //∆..............................
    @Published var listOfPost: [PostModel] = []
    //∆..............................
    
    // MARK: -∆ Initializer
    ///∆.................................
    init() {
        //∆..........
        let post1 = PostModel(
            postID: "", userID: "",
            username: "Alias The Great",
            caption: "Lorem ipsum dolor sit amet, consectetuer" +
                " adipiscing elit. Donec odio. Quisque volutpat mattis eros.",
            dateCreated: Date(),
            likeCount: 0, likedByUser: false)
        //∆..........
        let post2 = PostModel(
            postID: "", userID: "",
            username: "Jessica",
            caption: "Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Morbi in sem quis dui placerat ornare.",
            dateCreated: Date(),
            likeCount: 0, likedByUser: false)
        //∆..........
        let post3 = PostModel(
            postID: "", userID: "",
            username: "Larry",
            caption: "Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis. Morbi in sem quis dui placerat ornare.",
            dateCreated: Date(),
            likeCount: 0, likedByUser: false)
        //∆..........
        let post4 = PostModel(
            postID: "", userID: "",
            username: "John",
            caption: "Lorem ipsum dolor sit amet, consectetuer" +
                " adipiscing elit. Donec odio. Quisque volutpat mattis eros.",
            dateCreated: Date(),
            likeCount: 0, likedByUser: false)
        
        listOfPost.append(contentsOf: [post1, post2, post3, post4])
        print("FETCH FROM DATABASE HERE...")
    }
    
    // MARK: -∆  Initializer USED FOR POST SINGLE SELECTION •••••••••
    init(post: PostModel) {
        self.listOfPost.append(post)
    }
    ///∆.................................
    
    
}// MARK: END OF: PostObjectList
