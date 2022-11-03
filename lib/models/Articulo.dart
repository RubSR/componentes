

class Articulo{
   String nombre;

   int cantidad;

   double precio;

   double? total;

   Articulo(this.nombre, this.cantidad, this.precio){
     total = cantidad * precio;
   }

}