import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
	@override
	_EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
	bool _escolhaUsuario = false;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Entrada de texto"),
			),
			body: Container(
				child: Column(
					children: <Widget>[
						SwitchListTile(
							title: Text("Receber notificações?"),
							activeColor: Colors.red,
							secondary: Icon(Icons.adb),
							value: _escolhaUsuario,
							onChanged: (bool escolha){
								setState(() {
									_escolhaUsuario = escolha;
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
								print("Resultado " + _escolhaUsuario.toString());
							},
						),
						/*
						Switch(
							value: _escolhaUsuario,
							onChanged: (bool valor){
								setState(() {
									_escolhaUsuario = valor;
								});
							},
						),					
						Text("Receber notificações?"),
						*/
					],
				),
			),
		);
	}
}