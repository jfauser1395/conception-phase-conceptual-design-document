workspace {

    model {
        user = person "User" "People that visit the Blog and participate." 
        softwareSystem = softwareSystem "Blogging Website" "My Blogging" {
            API = container "API Application" "Provides Blogging functionality via a JSON/HTTPS API." "ASP.NET 8 Core" "API"
            Database = container "Database" "All data is stored in a MySql Server to process queries" "Relational database schema" "Database"
            singlePageApplication = container "Single-Page Application" "Provides all of the Blogging functionality to User via their web browser." "TypeScript and Angular" "Web Browser"
            PWA = container "Mobile App as PWA" "Provides a limited subset of the Blogging functionality to customers via their mobile device." "Angular PWA Creator" "Mobile PWA"
        }
      

        
        user -> singlePageApplication "Uses"
        user -> PWA "Uses"
        singlePageApplication -> API "Makes API calls to" "JSON/HTTPS"
        PWA -> API "Makes API calls to" "JSON/HTTPS"
        API -> Database "Read from and write to"

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
            element "API" {
                shape roundedbox
            }
        }
    }
    
}
