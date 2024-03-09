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
      

        
        user -> api "Uses"
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