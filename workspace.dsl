workspace {

    model {
        user = person "User" "A user of my software system."
        softwareSystem = softwareSystem "Blogging Website" "My Blogging" {
            API = container "API" {
                tags "API"
            }
            DB = container "Database" {
                tags "Database"
            }
             singlePageApplication = container "Single-Page Application" "Provides all of the Blogging functionality to User via their web browser." "TypeScript and Angular" "Web Browser"
             PWA = container "Mobile App as PWA" "Provides a limited subset of the Blogging functionality to customers via their mobile device." "Angular PWA Creator" "Mobile PWA"
        }
      

        
        user -> singlePageApplication "Uses"
        user -> PWA "Uses"
        singlePageApplication -> API "Uses"
        PWA -> API "Uses"
        API -> DB "Read from and write to"

    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            
        }

        container softwareSystem "Diagram2" {
            include *
            
        }
        styles {
           
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
             element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Database" {
                shape cylinder
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile PWA" {
                shape MobileDevicePortrait
            }
        }
    }
    
}