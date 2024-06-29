import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window = NSWindow(contentRect: NSMakeRect(0, 0, 300, 300),
                          styleMask: [.titled, .closable, .miniaturizable], // Removed .resizable
                          backing: .buffered, defer: false)
        window.center()
        window.title = "Photo Date Organiser"
        window.makeKeyAndOrderFront(nil)
        window.contentViewController = ViewController()
    }
}
