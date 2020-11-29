import 'package:wallpapers/model/categories.dart';

List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = List();
  CategoriesModel categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/4677668/pexels-photo-4677668.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/5709331/pexels-photo-5709331.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "People";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/2917442/pexels-photo-2917442.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Interior";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/763097/pexels-photo-763097.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  categoriesModel.imgUrl = "https://images.pexels.com/photos/633520/pexels-photo-633520.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categoriesModel.categoriesName = "Something";
  categories.add(categoriesModel);
  categoriesModel = CategoriesModel();

  return categories;
}