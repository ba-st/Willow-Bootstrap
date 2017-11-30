Configuring
beNavigationMenuIn: aNavigationBar

	containerBuildingCommand := [ :containerCommand | ListItemWebView itemizing: self content containedIn: aNavigationBar applying: [ :listItem | containerCommand asWebComponentCommand + listItem addClass bootstrap dropdown ] ]