abstract class Bottle{
  void open();
}

class CokeBottle implements Bottle{
  final int volume;
  final String brand;
  CokeBottle({required this.volume, required this.brand});

  @override
  void open(){
    print('Coke bottle is opened');
  }
 factory CokeBottle.copyWith(CokeBottle original, {int? newVolume}) {
    return CokeBottle(
      volume: newVolume ?? original.volume,
      brand: original.brand,
    );
  }
}

void main() {
  CokeBottle a = CokeBottle(volume: 5, brand: 'Cola');
  CokeBottle newA = CokeBottle.copyWith(a, newVolume: 10);
}
