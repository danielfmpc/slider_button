import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
	@override
	_EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
	double _escolhaUsuario = 0;
	String _label = "0";
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Entrada de texto"),
			),
			body: Container(
				padding: EdgeInsets.all(60),
				child: Column(
					children: <Widget>[
						Slider(
							value: _escolhaUsuario,
							min: 0,
							max: 10,
							label: _label,
							divisions: 5,
							activeColor: Colors.red,
							inactiveColor: Colors.black26,
							onChanged: (double valor){
								setState(() {
									_escolhaUsuario = valor;
									_label = valor.toInt().toString();
								});
							},
						),
						RaisedButton(
							child: Text(
								"Salvar",
								style: TextStyle(
									fontSize: 20
								),
							),
							onPressed: (){
								print("Valor selecionado: " + _escolhaUsuario.toString());
							},
						),
					],
				),
			),
		);
	}
}