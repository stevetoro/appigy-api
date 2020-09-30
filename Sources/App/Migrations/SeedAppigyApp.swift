import Fluent

struct SeedAppigyApp: Migration {
    var appigyApps = [
        AppigyApp(name: "1Password", brew_formula: "1password", description: "1Password is a password manager developed by AgileBits Inc. It provides a place for users to store various passwords, software licenses, and other sensitive information in a virtual vault that is locked with a PBKDF2-guarded master password.", category: "Security", image_name: "1password.png"),
        AppigyApp(name: "Brave", brew_formula: "brave-browser", description: "Brave is a free and open-source web browser developed by Brave Software, Inc. based on the Chromium web browser. It blocks ads and website trackers, and provides a way for users to send cryptocurrency contributions in the form of Basic Attention Tokens to websites and content creators.", category: "Browser", image_name: "brave.png"),
        AppigyApp(name: "CocoaPods", brew_formula: "cocoapods", description: "CocoaPods is an application level dependency manager for the Objective-C, Swift and any other languages that run on the Objective-C runtime, such as RubyMotion, that provides a standard format for managing external libraries.", category: "Development", image_name: "cocoapods.png"),
        AppigyApp(name: "Discord", brew_formula: "discord", description: "Discord is an American proprietary freeware instant messaging and VoIP application and digital distribution platform designed for creating communities ranging from gamers to education and businesses. Discord specializes in text, image, video and audio communication between users in a chat channel. ", category: "Messaging", image_name: "discord.png"),
        AppigyApp(name: "Dropbox", brew_formula: "dropbox", description: "Dropbox is a file hosting service operated by the American company Dropbox, Inc., headquartered in San Francisco, California, that offers cloud storage, file synchronization, personal cloud, and client software.", category: "Cloud Storage", image_name: "1password.png"),
        AppigyApp(name: "WhatsApp", brew_formula: "whatsapp", description: "WhatsApp Messenger, or simply WhatsApp, is an American freeware, cross-platform messaging and Voice over IP service owned by Facebook, Inc. It allows users to send text messages and voice messages, make voice and video calls, and share images, documents, user locations, and other media.", category: "Messaging", image_name: "whatsapp.png"),
        AppigyApp(name: "VLC Media Player", brew_formula: "vlc", description: "VLC media player is a free and open-source, portable, cross-platform media player software and streaming media server developed by the VideoLAN project. ", category: "Media", image_name: "vlc.png"),
        AppigyApp(name: "Tor Browser", brew_formula: "tor-browser", description: "Tor is free and open-source software for enabling anonymous communication. The name derived from the acronym for the original software project name \"The Onion Router\".", category: "Browser", image_name: "tor.png"),
    ]
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return appigyApps.map({ $0.save(on: database) })
            .flatten(on: database.eventLoop)
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        let names = appigyApps.map({ $0.name })
        return AppigyApp.query(on: database)
            .filter(\.$name ~~ names)
            .delete()
    }
}
