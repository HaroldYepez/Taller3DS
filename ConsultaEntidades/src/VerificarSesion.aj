public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut verificars(): call(*  consultar(..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    void around() : verificars() {
    	if(IniciarSesion.sesionIniciada) {
    		proceed();
    	}
        // MétodoInicioSesión
    } 
  //  after() : nombrePointcut()  {
        //Ya se inició sesión. (Puede imprimir un mensaje)
 //   }  
}
