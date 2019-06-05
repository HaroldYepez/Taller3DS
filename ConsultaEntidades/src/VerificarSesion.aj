public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut verificars(): call(*  consultar(..)); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
    void around() : verificars() {
    	if(IniciarSesion.sesionIniciada) {
    		proceed();
    	}else {
    		System.out.println("No se ha iniciado sesion");
    	}
        // M�todoInicioSesi�n
    } 
    after() : verificars()  {
    	if(IniciarSesion.sesionIniciada) {
    	System.out.println("Si se inicio sesion");
        //Ya se inici� sesi�n. (Puede imprimir un mensaje)
    	}else {
    		Entidad.mensaje.setVisible(false);
    		IniciarSesion.initialize();
    	}
    }  
}
