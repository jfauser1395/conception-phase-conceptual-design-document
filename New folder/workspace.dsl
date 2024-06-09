workspace {

    model {
        user = person "User" "People that are visiting and participating on the Blog." "user"
        admin = person "Administrator" "Administrator is uploading new content on the Blog" "admin"

        softwareSystem = softwareSystem "Blogging Website" "My Blogging" {
            WebApplication = container "Web Application" "Delivers the static content and Blogging single page application" "ASP.NET Core Web Server" "
            api = container "API Application" "Provides functionalities for CRUD operations via a RUST API." "ASP.NET Core 8 & Entity Framework" "API"
            database = container "Database" "All data is stored in a MySql Server to process queries." "Relational database schema (many-to-many relation)" "Database"
            singlePageApplication = container "Single-Page Application" "Provides all of the Blogging functionality to User via their web browser." "TypeScript and Angular" "Web Browser"
            pwa = container "Mobile App as PWA" "Provides a limited subset of the Blogging functionalities to visiters via their mobile device." "Angular PWA Service Worker" "Mobile PWA"
            email = container "E-mail System" "Internal e-mail system." "email"
        }
      

        
        user -> webApplication "Visits spaceofthougsts.com using" "HTTPS"
        admin -> webApplication "Visits spaceofthougsts.com to post new stuff using" "HTTPS"
        webApplication -> singlePageApplication "Delivers to the customer's web browser"
        singlePageApplication -> api "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> pwa "Allows the user to experience a mobile application"
        api -> Database "Read from and write to"
        api -> email "Sends e-mail using"
        email -> user "Sends e-mail newsletter to subsciber"
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
