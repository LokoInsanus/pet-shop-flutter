import 'package:flutter/material.dart';
import 'package:pet_shop/src/views/components/backgroundImage.dart';
import 'package:pet_shop/src/views/components/createClienteRows.dart';

class ListarClientes extends StatelessWidget {
const ListarClientes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
      child: BackgroundImage(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xB2000088)
                ),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('ID'), ),
                    DataColumn(label: Text('Nome')),
                    DataColumn(label: Text('Email')),
                    DataColumn(label: Text('Rua')),
                    DataColumn(label: Text('Bairro')),
                    DataColumn(label: Text('Número')),
                    DataColumn(label: Text('Telefone')),
                    DataColumn(label: Text('CPF')),
                  ],
                  rows: CreateClienteRows(),
                  dataRowColor: MaterialStateProperty.all(const Color(0xCCCFF4FF)),
                  dataTextStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}