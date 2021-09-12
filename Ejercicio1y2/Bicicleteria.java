/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package examenfinal;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author agust
 */
//Ejercicio 1
public class Bicicleteria {

    private List <Bicicleta> bicicletas;
    private float ganancias;
    private Integer cantidadDeVentas;

    public Bicicleteria() {
        bicicletas = new ArrayList<Bicicleta>();
        cantidadDeVentas = 0;
        ganancias = 0;
}
    public void venderBicicleta (Bicicleta bicicleta){
        bicicletas.remove(bicicleta);
        cantidadDeVentas++;
        ganancias= ganancias + bicicleta.getPrecio();
    }
   
    public void addBicicleta (Bicicleta bicicleta){
        bicicletas.add(bicicleta);
    }
 //Ejercicio 2
    public Bicicleta buscarBicicleta (String nroDeSerie) {
        for (Bicicleta bicicleta : bicicletas){
            if (bicicleta.getNroDeSerie().equalsIgnoreCase(nroDeSerie)) {
            return bicicleta;
            }
        }
        return null;
    }
            
}

