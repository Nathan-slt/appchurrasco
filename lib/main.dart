// IMPORTS - material
import 'package:flutter/material.dart';

// ETAPA 1 - Esqueleto da tela
// Objetivo: entender a estrutura de um app Flutter

void main() => runApp(MaterialApp(
  home: ChurrascoApp(),
));

class ChurrascoApp extends StatelessWidget{

  String _resultado = "";
  void _calcular(){
    
  }

  @override
  Widget build(BuildContext context){
    // Esqueleto visual da tela - como a tag <html>
    return Scaffold( 
      // LOCAL ONDE FICARÃO A MAIORIA DOS NOSSOS ELEMENTOS

      // semelhante ao header
      appBar: AppBar(
        title: Text("Calculadora de Churras"),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            //AQUI É ONDE ESTARÃO OS NOSSOS ELEMENTOS/WIDGETS
            Text(
              "🍖Bem-vindo à Calculadora de Churras♨️",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 36),
            Text(
              "Informe o número de convidados:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            // Mulheres
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade de Molieres:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            // Homens
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade de Homenes:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calcular,
              child: Text("Calcular"),
            ),
            SizedBox(height: 36),
            Text(
              _resultado,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

    );
  }
}