class Crop {
  String cropName;
  String estimatedHarvestTime;
  double estimatedSellingPrice;

  Crop({
    required this.cropName,
    required this.estimatedHarvestTime,
    required this.estimatedSellingPrice,
  });
}

List<Crop> crops = [
  Crop(
    cropName: 'Tomatoes',
    estimatedHarvestTime: '2 months',
    estimatedSellingPrice: 3.99,
  ),
  Crop(
    cropName: 'Corn',
    estimatedHarvestTime: '3 months',
    estimatedSellingPrice: 2.49,
  ),
  Crop(
    cropName: 'Apples',
    estimatedHarvestTime: '4 months',
    estimatedSellingPrice: 1.99,
  ),
  Crop(
    cropName: 'Lettuce',
    estimatedHarvestTime: '1 month',
    estimatedSellingPrice: 0.99,
  ),
  Crop(
    cropName: 'Strawberries',
    estimatedHarvestTime: '2.5 months',
    estimatedSellingPrice: 4.99,
  ),
];
