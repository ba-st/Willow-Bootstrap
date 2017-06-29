Configuring
beNavigationMenuIn: aNavigationBar

	containerBuildingCommand := [ :containerCommand | ListItemWebView itemizing: self content containedIn: aNavigationBar applying: containerCommand + (ComponentClassificationCommand toStyleWith: self containerStyle) ]