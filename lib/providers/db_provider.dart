import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter_app1/model/productModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database;

    // If database don't exists, create one
    _database = await initDB();

    return _database;
  }

  // Create the database and the product
  // table
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'product_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute('CREATE TABLE Product('
             ' Season TEXT,'
             ' Brand TEXT,'
              'Mood TEXT,'
              'Gender TEXT,'
              'Theme TEXT,'
              'Category TEXT,'
              'Name TEXT,'
              ' Color TEXT,'
                  ' Option TEXT,'
                  ' MRP INTEGER,'
              ' SubCategory TEXT,'
                  ' Collection TEXT,'
                  ' Fit TEXT ,'
                  ' Description TEXT,'
                  ' QRCode TEXT,'
                  ' Looks TEXT,'
                  ' LooksImageUrl TEXT,'
                  ' LooksImage TEXT,'
                  ' Fabric TEXT,'
                  'var EAN,'
                  ' Finish TEXT,'
                  ' AvailableSizes TEXT,'
                  ' SizeWiseStock TEXT,'
                  ' OfferMonths TEXT,'
                  ' ProductClass INTEGER,'
              ' Promoted TEXT,'
                  ' Secondary TEXT,'
                  ' Deactivated TEXT,'
                  ' DefaultSize TEXT,'
                  ' Material TEXT,'
                  ' Quality TEXT,'
                  ' QRCode2 TEXT,'
                  ' DisplayName TEXT ,'
                  ' DisplayOrder INTEGER,'
              ' MinQuantity INTEGER,'
              ' MaxQuantity INTEGER,'
              ' QPSCode TEXT,'
                  ' DemandType TEXT,'
                  ' Image TEXT,'
                  ' ImageUrl TEXT,'
                  ' AdShoot TEXT,'
                  ' Technology TEXT,'
                  ' ImageAlt TEXT,'
                  ' TechnologyImage TEXT,'
                  ' TechnologyImageUrl TEXT,'
                  ' IsCore TEXT,'
                  ' MinimumArticleQuantity TEXT,'
                  ' Likeabilty TEXT,'
                  ' BrandRank TEXT'
              ')');
        });
  }

  // Insert product on database
  createProduct(Product newProduct) async {
    await deleteAllProducts();
    final db = await database;
    final res = await db.insert('Product', newProduct.toJson());
    return res;
  }

  // Delete all product
  Future<int> deleteAllProducts() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Product');

    return res;
  }

  Future<List<Product>> getAllProducts() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM PRODUCT");

    List<Product> list =
    res.isNotEmpty ? res.map((c) => Product.fromJson(c)).toList() : [];

    return list;
  }
}