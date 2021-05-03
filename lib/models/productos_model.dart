import 'package:flutter/material.dart';

class ProductosModel {
  var id;

  String nombre;
  String imagen;
  double precio;
  int cantidad;

  ProductosModel(
    String documentID,
    String nombre,
    String imagen,
    double precio,
    int cantidad,
  );

  ProductosModel.map(dynamic obj) {
    this.id = obj['id'];
    this.nombre = obj['nombre'];
    this.imagen = obj['imagen'];
    this.precio = parseDouble(obj['precio']);
    this.cantidad = obj['cantidad'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    map['id'] = id;
    map['nombre'] = nombre;
    map['imagen'] = imagen;
    map['precio'] = precio;
    map['cantidad'] = cantidad;

    return map;
  }

  ProductosModel.fromMap(Map<String, dynamic> map) {
    this.nombre = map['nombre'];
    this.id = map['id'];
    this.imagen = map['imagen'];
    this.precio = parseDouble(map['precio']);
    this.cantidad = 0;
  }

  double parseDouble(dynamic value) {
    try {
      if (value is String) {
        return double.parse(value);
      } else if (value is double) {
        return value;
      } else {
        return 0.0;
      }
    } catch (e) {
      // return null if double.parse fails
      return null;
    }
  }
}
