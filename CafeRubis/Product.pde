class Product
{
  //Create String field name and float field price
  String name;
  float price;
  
  Product(String name, float price)
  {
    this.name = name;
    this.price = price;
  }
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
  }
}