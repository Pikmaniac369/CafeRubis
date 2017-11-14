/*
          Name: Adam Ryan
Student Number: C16302271
*/

void setup()
{
  size(800, 600);
  
  loadData();
  
  printProducts();
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

void printProducts()
{
  for(int i = 0; i< products.size(); i++)
  {
    println("", products.get(i));
  }
}

void displayProducts()
{
  float horizontalMargin = width/16;
  float verticalMargin = height/16;
  float CMarginLeft = width/8;
  float BetweenBoxes = (height/8);
  
  for(int i = 0; i< products.size(); i++)
  {
    stroke(0);
    fill(255);
    rect(0+horizontalMargin, verticalMargin+(i*(height/8)), (width/2) - CMarginLeft, verticalMargin+(i*(height/8)));
  }
  
}

void draw()
{
  background(195);
  displayProducts();
}