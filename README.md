# CollectionViewSwift
Created a basic program to learn the collection View and dequeIndentifier

Steps

  1. In ViewController add CollectionView
  2. Add n number of CollectionViewCells
  3. Each CollectionViewCell will have Identifier and each cell will be associated to subclass of UICollectionVIewCell
 
 In ViewController
  1. Implement UICollectionViewDataSource and UICollectionViewDelegate and all all the required method
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int)
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
     
  2. DequeueIdentifier will use the same created cell and not recreate the cell
  3. cell can be changed according to data source
  3. attach collectionView to datasource and delegate
  
 RUN THE APP HURRAY HERE is the OUTPUT
 
