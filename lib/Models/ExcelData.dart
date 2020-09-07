import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:schoolsmapapp/Models/Schools.dart';

class ExelData{

  Future<Schools> detData()async{
    ByteData data = await rootBundle.load("Assets/schoolsData.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes, update: true);

    for (var table in excel.tables.keys) {
      print("Data type is ${table.runtimeType}"); //sheet Name
      print(excel.tables[table].maxCols);
      print(excel.tables[table].maxRows);
      for (var row in excel.tables[table].rows) {
        List<Schools> schools = [];
        // Schools school = Schools(table['province'],table['phase_PED'],table['lat'],table['long'],table['telephone'],table['lerners'],table['educator']);
        print("$row");
      }
    }
  }

}
