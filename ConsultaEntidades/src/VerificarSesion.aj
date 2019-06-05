public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut verificars(): call(*  consultar(..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    void around() : verificars() {
    	if(IniciarSesion.sesionIniciada) {
    		proceed();
    	}else {
    		System.out.println("No se ha iniciado sesion");
    	}
        // MétodoInicioSesión
    } 
    after() : verificars()  {
    	if(IniciarSesion.sesionIniciada) {
    	System.out.println("Si se inicio sesion");
        //Ya se inició sesión. (Puede imprimir un mensaje)
    	}else {
    		Entidad.mensaje.setVisible(false);
    		IniciarSesion.initialize();
    	}
    }  
}
