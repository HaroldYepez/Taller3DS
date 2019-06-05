public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrir� la llamada al inicio de sesi�n.
    pointcut verificars(): call(*  consultar(..)); 
  //Advices. Se ejecutar�n en el lugar indicado por el pointcut.
    void around() : verificars() {
    	if(IniciarSesion.sesionIniciada) {
    		proceed();
    	}
        // M�todoInicioSesi�n
    } 
  //  after() : nombrePointcut()  {
        //Ya se inici� sesi�n. (Puede imprimir un mensaje)
 //   }  
}
