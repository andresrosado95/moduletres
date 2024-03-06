const express = require("express");
const app = express();
 
const dotenv = require("dotenv");
dotenv.config();
 
//conectar con la base de datos
const {connection} = require("../config.db");

const getCotizacion = (request, response) => {
    connection.query("SELECT * FROM tb_cotizacion",
    (error, results) => {
        if(error)
            throw error;
        response.status(200).json(results);
    });
};
//ruta de consumo
app.route("/cotizacion")
.get(getCotizacion);

/* "SELECT p.id_productos, p.detalle_producto, cp.cantidad, p.precio, u.id_usuario, u.nombre_usuario, u.correo_usuario, c.descuento, c.subtotal, c.valor_total  FROM cotizacion.tb_cotizacion c " +  
    " inner join tb_cotizacion_productos cp on c.id_cotizacion= cp.id_cotizacion" +
    " inner join tb_productos p on cp.id_productos= p.id_productos" +
    " inner join tb_usuarios u on c.id_usuario= u.id_usuario", */


//Utilizando el método post
const postCotizacion = (request, response) => {
    const {id_cotizacion, id_usuario, fecha_cotizacion, estado, subtotal, descuento, tipo_descuento, valor_total} = request.body;
    connection.query("insert into tb_cotizacion (id_cotizacion, id_usuario, fecha_cotizacion, estado, subtotal, descuento, tipo_descuento, valor_total) values (?,?,?,?,?,?,?,?)",
    [id_cotizacion, id_usuario, fecha_cotizacion, estado, subtotal, descuento, tipo_descuento, valor_total],
    (error, results) => {
        if(error)
            throw error;
            response.status(201).json(['success','cotizacion creada']);
    });
};
app.route("/cotizacion")
.post(postCotizacion);

/* Metodo delete */

const deleteCotizacion = (request, response) => {
    const {id} = request.body;
    connection.query("delete from tb_cotizacion where id_cotizacion = ?",
    [id],
    (error, results) => {
        if(error)
            throw error;
            response.status(201).json(['success','cotización eliminada']);
    });
};
app.route("/cotizacion")
.delete(deleteCotizacion); 

/* metodo put */

const putCotizacion = (request, response) => {
    const { id_usuario, fecha_cotizacion, estado, subtotal, descuento, tipo_descuento, valor_total, id_cotizacion}= request.body;
    connection.query ("UPDATE tb_cotizacion SET id_usuario = ?, fecha_cotizacion = ?, estado = ?, subtotal = ?, descuento = ?, tipo_descuento = ?, valor_total = ? WHERE id_cotizacion = ? ",
    [id_usuario, fecha_cotizacion, estado, subtotal, descuento, tipo_descuento, valor_total, id_cotizacion],
    (error, results) => {
        if(error)
            throw error;
            response.status(201).json(['success','cotizacion modificada']);
    }) ;
}; 

app.route("/cotizacion")
.put(putCotizacion)
 
module.exports = app