workspace {

    model {
        user = person "User" "A user of my software system."
        softwareSystem = softwareSystem "Software System" "My software system" {
            api = container "API" {
                tags "API"
            }
            db = container "Database" {
                tags "Database"
            }
        }
        softwareSystem01 = softwareSystem "Client" "Single Page Application" {
            loginComponent = container "Login Form" {
                tags "login"
            }

        }

        
        user -> loginComponent "Uses
        loginComponent -> api "Uses"
        api -> db "Read from and write to"

    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            
        }

        container softwareSystem "Diagram2" {
            include *
            
        }

        systemContext softwareSystem "Diagram3" {
            include *
            
        }

        styles {
            element "Client" {
        
                background black
                color #ffffff
            }
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
            element "Database" {
                shape cylinder
                background blue
                color white
            }
            element "API" {
                background #08447b
                color #fffffd
            }
        }
    }
    
}