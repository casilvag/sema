class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(view:"/home")
        "/home"(view:"/home")
        "/equipo"(view: "/equipo")
        "/ingresar"(view: "/ingresar")
        "/whoWeAre"(view: "/whoWeAre")


        "500"(view:'/error')
	}
}
