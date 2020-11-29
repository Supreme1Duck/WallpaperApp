import 'package:wallpapers/model/categories.dart';

List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = List();
  CategoriesModel categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/950745/pexels-photo-950745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/5843500/pexels-photo-5843500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "People";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/5865155/pexels-photo-5865155.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Interior";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/5590039/pexels-photo-5590039.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/5676470/pexels-photo-5676470.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Something";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  return categories;
}