void setup()
{
  size(800, 600);
  
  loadData();
}

//Declare global ArrayLists
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

//Write the loadData() function
void loadData()
{
  //Load the CSV file
  Table table = loadTable("cafe.csv", "header");
  
  //Iterate over the rows in the file and load their data into the products ArrayList
  for(TableRow current_row:table.rows())
  {
    Product product = new Product(current_row);
    products.add(product);
  }
  
  
}





void draw()
{
  
}