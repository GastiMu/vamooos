function eliminar(url)
{
	if(window.confirm('Desea eliminar este registro?'))
	{
		window.location=url;
	}
}

function editar(apellido, nombre, documento) {
	document.getElementById('apellido').value = apellido;
	document.getElementById('nombre').value = nombre;
	document.getElementById('documento').value = documento;
}