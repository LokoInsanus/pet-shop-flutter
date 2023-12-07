import 'package:flutter/material.dart';
import 'package:pet_shop/src/views/components/backgroundImage.dart';
import 'package:pet_shop/src/views/components/createPetRows.dart';

class ListarPets extends StatelessWidget {
const ListarPets({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
      child: BackgroundImage(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Nome')),
                  DataColumn(label: Text('Dono')),
                  DataColumn(label: Text('Animal')),
                  DataColumn(label: Text('Raça')),
                  DataColumn(label: Text('RGA')),
                ],
                rows: CreatePetRows(),
              ),
            ),
          ]
        ),
      )
    );
  }
}