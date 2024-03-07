workspace {

    model {
        user = person "User" "A user of my software system."
        softwareSystem = softwareSystem "Software System" "My software system." {
            webapp = container "Web App"
            db = container "Database"{
                tags "Database"
            }
        }


        
        user -> webapp "Uses"
        webapp -> db "Read from and write to"

    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            
        }

        container softwareSystem "Diagram2" {
            include *
            
        }

        styles {
            element "Software System" {
        
                background #1168bd
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
        }
    }
    
}