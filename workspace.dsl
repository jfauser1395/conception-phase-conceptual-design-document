workspace {

    model {
        user = person "User" "People that visit the Blog and participate." "user"
        admin = person "Administrator" "Administrator is uploading new content on the Blog" "admin"

        email = softwareSystem "E-mail System" "The internal Microsoft Exchange e-mail system." "email"

    

        softwareSystem = softwareSystem "Blogging Website" "My Blogging" {
            WebApplication = container "Web Application" "Delivers the static content and Blogging single page application" "ASP.NET Core Web Server" "
            api = container "API Application" "Provides Blogging functionality via a JSON/HTTPS API." "ASP.NET Core" "API"
            database = container "Database" "All data is stored in a MySql Server to process queries" "Relational database schema" "Database"
            singlePageApplication = container "Single-Page Application" "Provides all of the Blogging functionality to User via their web browser." "TypeScript and Angular" "Web Browser"
            pwa = container "Mobile App as PWA" "Provides a limited subset of the Blogging functionality to customers via their mobile device." "Angular PWA Service Worker" "Mobile PWA"
        }
      

        
        user -> webApplication "Visits artsblogging.com using" "HTTPS"
        user -> singlePageApplication "Viewing new content on the"
        admin -> webApplication "Visits artsblogging.com to post new stuff using" "HTTPS"
        admin -> singlePageApplication "Uploading new content using the"
        webApplication -> singlePageApplication "Delivers to the customer's web browser"
        singlePageApplication -> api "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> pwa "Allows the user to experience a mobile application"
        api -> Database "Read from and write to"
        api -> email "Sends e-mail using"
        email -> user "Sends e-mail to"
    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            autoLayout    
        }
        container softwareSystem "Diagram2" {
            include *  
            
        }
        styles {
           
            element "admin" {
                shape person
                background #08427b
                color #ffffff
            }
            element "user" {
                shape person
                background #999999
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
                shape roundedbox
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile PWA" {
                shape MobileDevicePortrait
            }
            element "email" {
                background #1168bd
            }
            
        }
    }
    
}
