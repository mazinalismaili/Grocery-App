class Item {
  String? itemName;
  double? quantity;
  String? unit;

  Item(String item, double quantity, String unit){
    this.itemName = item;
    this.quantity = quantity;
    this.unit = unit;
  }

  String  get getItemName{ 
    return this.itemName!;
    }
  double get getQuantity{
    return this.quantity!;
  }
  String get getUnit{
    return this.unit!;
  }
  
  void set setItemName(String i){
    this.itemName = i;
  }

    void set setQuantity(double q){
    this.quantity = q;
  }

    void set setUnit(String u){
    this.unit = u;
  }


}