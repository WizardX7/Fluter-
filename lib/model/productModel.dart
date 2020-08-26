import 'dart:convert';



List productFromJson(String str) =>
    List.from(json.decode(str).map((x) => Product.fromJson(x)));


String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product{

  String Season;
  String Brand;
  String Mood;
  String Gender;
  String Theme;
  String Category;
  String Name;
  String Color;
  String Option;
  int MRP;
  String SubCategory;
  String Collection;
  String Fit;
  String Description;
  String QRCode;
  String Looks;
  String LooksImageUrl;
  String LooksImage;
  String Fabric;
  String EAN;
  String Finish;
  List<String> AvailableSizes;
  String SizeWiseStock;
  List<String> OfferMonths;
  int ProductClass;
  bool Promoted;
  bool Secondary;
  bool Deactivated;
  String DefaultSize;
  String Material;
  String Quality;
  String QRCode2;
  String DisplayName;
  int DisplayOrder;
  int MinQuantity;
  int MaxQuantity;
  String QPSCode;
  String DemandType;
  String Image;
  String ImageUrl;
  bool AdShoot;
  String Technology;
  String ImageAlt;
  String TechnologyImage;
  String TechnologyImageUrl;
  bool IsCore;
  int MinimumArticleQuantity;
  int Likeabilty;
  String BrandRank;

  Product({
    this.Season,
    this.Brand,
    this.Mood,
    this.Gender,
    this.Theme,
    this.Category,
    this.Name,
    this.Color,
    this.Option,
    this.MRP,
    this.SubCategory,
    this.Collection,
    this.Fit,
    this.Description,
    this.QRCode,
    this.Looks,
    this.LooksImageUrl,
    this.LooksImage,
    this.Fabric,
    this.EAN,
    this.Finish,
    this.AvailableSizes,
    this.SizeWiseStock,
    this.OfferMonths,
    this.ProductClass,
    this.Promoted,
    this.Secondary,
    this.Deactivated,
    this.DefaultSize,
    this.Material,
    this.Quality,
    this.QRCode2,
    this.DisplayName,
    this.DisplayOrder,
    this.MinQuantity,
    this.MaxQuantity,
    this.QPSCode,
    this.DemandType,
    this.Image,
    this.ImageUrl,
    this.AdShoot,
    this.Technology,
    this.ImageAlt,
    this.TechnologyImage,
    this.TechnologyImageUrl,
    this.IsCore,
    this.MinimumArticleQuantity,
    this.Likeabilty,
    this.BrandRank,
  });


  factory Product.fromJson(Map<String, dynamic> json) => Product(
    Season:	    json["Season"],
    Brand:	    json["Brand"],
    Mood:	    json["Mood"],
    Gender:	    json["Gender"],
    Theme:	    json["Theme"],
    Category:	    json["Category"],
    Name:	    json["Name"],
    Color:	    json["Color"],
    Option:	    json["Option"],
    MRP:	    json["MRP"],
    SubCategory:	    json["SubCategory"],
    Collection:	    json["Collection"],
    Fit:	    json["Fit"],
    Description:	    json["Description"],
    QRCode:	    json["QRCode"],
    Looks:	    json["Looks"],
    LooksImageUrl:	    json["LooksImageUrl"],
    LooksImage:	    json["LooksImage"],
    Fabric:	    json["Fabric"],
    EAN:	    json["EAN"],
    Finish:	    json["Finish"],
    AvailableSizes:	    json["AvailableSizes"],
    SizeWiseStock:	    json["SizeWiseStock"],
    OfferMonths:	    json["OfferMonths"],
    ProductClass:	    json["ProductClass"],
    Promoted:	    json["Promoted"],
    Secondary:	    json["Secondary"],
    Deactivated:	    json["Deactivated"],
    DefaultSize:	    json["DefaultSize"],
    Material:	    json["Material"],
    Quality:	    json["Quality"],
    QRCode2:	    json["QRCode"],
    DisplayName:	    json["DisplayName"],
    DisplayOrder:	    json["DisplayOrder"],
    MinQuantity:	    json["MinQuantity"],
    MaxQuantity:	    json["MaxQuantity"],
    QPSCode:	    json["QPSCode"],
    DemandType:	    json["DemandType"],
    Image:	    json["Image"],
    ImageUrl:	    json["ImageUrl"],
    AdShoot:	    json["AdShoot"],
    Technology:	    json["Technology"],
    ImageAlt:	    json["ImageAlt"],
    TechnologyImage:	    json["TechnologyImage"],
    TechnologyImageUrl:	    json["TechnologyImageUrl"],
    IsCore:	    json["IsCore"],
    MinimumArticleQuantity:	    json["MinimumArticleQuantity"],
    Likeabilty:	    json["Likeabilty"],
    BrandRank:	    json["BrandRank"],

  );

  Map<String, dynamic> toJson() => {
    "Season":	Season,
    "Brand":	    Brand,
    "Mood":	    Mood,
    "Gender":	    Gender,
    "Theme":	    Theme,
    "Category":	    Category,
    "Name":	    Name,
    "Color":	    Color,
    "Option":	    Option,
    "MRP":	    MRP,
    "SubCategory":	    SubCategory,
    "Collection":	    Collection,
    "Fit":	    Fit,
    "Description":	    Description,
    "QRCode":	    QRCode,
    "Looks":	    Looks,
    "LooksImageUrl":	    LooksImageUrl,
    "LooksImage":	    LooksImage,
    "Fabric":	    Fabric,
    "EAN":	    EAN,
    "Finish":	    Finish,
    "AvailableSizes":	    AvailableSizes,
    "SizeWiseStock":	    SizeWiseStock,
    "OfferMonths":	    OfferMonths,
    "ProductClass":	    ProductClass,
    "Promoted":	    Promoted,
    "Secondary":	    Secondary,
    "Deactivated":	    Deactivated,
    "DefaultSize":	    DefaultSize,
    "Material":	    Material,
    "Quality":	    Quality,
    "QRCode2":	    QRCode2,
    "DisplayName":	    DisplayName,
    "DisplayOrder":	    DisplayOrder,
    "MinQuantity":	    MinQuantity,
    "MaxQuantity":	    MaxQuantity,
    "QPSCode":	    QPSCode,
    "DemandType":	    DemandType,
    "Image":	    Image,
    "ImageUrl":	    ImageUrl,
    "AdShoot":	    AdShoot,
    "Technology":	    Technology,
    "ImageAlt":	    ImageAlt,
    "TechnologyImage":	    TechnologyImage,
    "TechnologyImageUrl":	    TechnologyImageUrl,
    "IsCore":	    IsCore,
    "MinimumArticleQuantity":	    MinimumArticleQuantity,
    "Likeabilty":	    Likeabilty,
    "BrandRank":	    BrandRank,

  };
}