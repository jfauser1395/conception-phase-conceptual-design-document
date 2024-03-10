workspace {

    model {
        user = person "User" "A user of my software system."
        softwareSystem = softwareSystem "Blogging Website" "My Blogging" {
            api = container "API" {
                tags "API"
            }
            db = container "Database" {
                tags "Database"
            }
             singlePageApplication = container "Single-Page Application" "Provides all of the Blogging functionality to User via their web browser." "TypeScript and Angular" "Web Browser"
        }
      

        
        user -> singlePageApplication "Uses"
        singlePageApplication -> api "Uses"
        api -> db "Read from and write to"

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
        }
    }
    
}