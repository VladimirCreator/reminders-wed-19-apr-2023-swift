final class Reminder {
    var title: String
    var subtitle: String
    var isDone: Bool

    init(_ title: String, _ subtitle: String, isDone: Bool) {
        self.title = title
        self.subtitle = subtitle
        self.isDone = isDone
    }
}
