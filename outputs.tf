output "frontend_url" {
  
  value = "${azurerm_linux_web_app.fe-webapp.name}.azurewebsites.net"
}

output "backedn_url" {
  
  value = "${azurerm_linux_function_app.be-fnapp.name}.azurewebsites.net"
}

