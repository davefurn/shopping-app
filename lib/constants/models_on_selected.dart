class RecommendedModel {
  dynamic name;
  dynamic tagLine;
  dynamic hash;
  List<String> images;
  dynamic description;
  dynamic price;

  RecommendedModel(this.name, this.tagLine, this.hash, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['tagLine'],
    item['hash'], item['images'] as List<String>, item['description'], item['price']))
    .toList();

var recommendationsData = [
  {
    "name": "2022, Jacket",
    "tagLine": "Get the best winter jackets",
    "hash": "LUKx9y00-oWr~q%NM|V@x]ogM{oM",
    "images": [
      "https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
      "https://images.unsplash.com/photo-1605908502724-9093a79a1b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1591047139829-d91aecb6caea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1577660002965-04865592fc60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1582623127508-3bbea01a4bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGphY2tldHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
    ],
    "description":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    "price": 39.99
  },
  {
    "name": "Coats",
    "tagLine": "Fashion frenzy 2022",
    "hash":
    "LJLqkS_N_3-p00xvD%%M_3D%WBRj",
    "images": [
     "https://images.unsplash.com/photo-1614532188535-2fa164c9ea24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvYXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
     "https://images.unsplash.com/photo-1530204300372-1eddee84dfb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1619473792839-1d3b0355a7c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29hdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1575647662261-d6c380d85547?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNvYXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849_960_720.jpg"
    ],
    "description":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    "price": 40.99
  },
  {
    "name": "Accessories",
    "tagLine": "Get me that necklace!!!, but but but It's for sallleeeeee; i said gimme that necklace",
    "hash":
    "L8Nm.-9E9axt00.8kZ%KNN_4MyRj",
    "images": [
     "https://images.unsplash.com/photo-1606760227091-3dd870d97f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWNjZXNzb3JpZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1571974096035-bc3568627608?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG5lY2tsYWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1650725737108-63718b7e8977?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YWNjZXNzb3JpZXMlMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1591892204579-530edbd4724d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFjY2Vzc29yaWVzJTIwZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ],
    "description":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    "price": 45.99
  },
  {
    "name": "Denim",
    "tagLine": "Blue jeans, Love it!!!!!!!",
    "hash":
    "LDFP89D\$00t7TKM{RPxu~qs:IqRi",
    "images": [
     "https://images.unsplash.com/photo-1604176354204-9268737828e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVuaW18ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
     "https://images.unsplash.com/photo-1542574621-e088a4464f7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGRlbmltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "https://cdn.pixabay.com/photo/2020/07/11/16/16/jeans-5394561__340.jpg",
      "https://images.unsplash.com/photo-1587073760653-e38a068b1fe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRlbmltJTIwZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1565084888279-aca607ecce0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRlbmltJTIwZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
    ],
    "description":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    "price": 40.99
  },
  {
    "name": "HandBag",
    "tagLine": "Kim kardash....duh!!!",
    "hash":
    "LfNKFyof?bj[~qj[IUay%MWBM{of",
    "images": [
     "https://images.unsplash.com/photo-1566150902887-9679ecc155ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGFuZGJhZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1614179689702-355944cd0918?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
      "https://cdn.pixabay.com/photo/2017/08/17/08/20/online-shopping-2650383__340.jpg",
      "https://images.unsplash.com/photo-1591348278863-a8fb3887e2aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGFuZGJhZyUyMGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1630750797888-8aea9e6160b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhhbmRiYWclMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
    ],
    "description":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    "price": 180
  },
];