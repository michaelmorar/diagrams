workspace {

    model {
        pas = softwareSystem "Policy Administration System" {
            exceed = container "Exceed"
        }

        ei = softwareSystem "Enterpise Integration" {
            enrich = container "Enrichment API"
            interaction = container "Interaction API"
        }

        pricing = softwareSystem "Pricing" {
            wsrte = container "WSRTE"
        }

        docs = softwareSystem "Documentation" {
            dialogue = container "Dialogue"
            alfresco = container "Alfresco"
        }
        
        exceed -> interaction "uses"
        interaction -> dialogue "uses"
        dialogue -> alfresco "uses"

    }

    views {
        container pas {
            include exceed dialogue alfresco interaction
            autoLayout lr
        }

        styles {
            element "Element" {
                background #1168bd
                color #ffffff
                shape RoundedBox
            }
        }
    }

}