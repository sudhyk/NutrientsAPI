import Vapor

// The Droplet is a core class that gives you access to many of Vapor's facilities. It is responsible for registering routes, starting the server, appending middleware, and more.
let drop = Droplet()

// Create a new route to accept GET http method on "listofnutrients"
// registers GET on URL http://localhost:8080/listofnutrients

drop.get("listofnutrients") { req in
    return try JSON(node: [ "nutrients" : ["Carbohydrates", "Protein", "Fat", "Vitamins","Minerals", "Water" ]])
}

// After registering routes, now run the droplet
drop.run()
