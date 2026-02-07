class Device {
  final String brand;
  final String model;

  Device({required this.brand, required this.model});

  void powerOn() {
    print('$brand $model Power on!');
  }
}

class SmartPhone extends Device {
  SmartPhone({required super.brand, required super.model});

  void takePhoto() {
    print("$brand $model taking photo!");
  }
}

class GamingPhone extends Device {
  GamingPhone({required super.brand, required super.model});

  void playGame() {
    print("$brand $model playing game!");
  }
}

// void main() {
//   final smartPhone = SmartPhone(brand: "13 Pro", model: "Apple");
//   final gamingPhone = GamingPhone(brand: "Azoth", model: "Asus");

//   smartPhone.powerOn();
//   gamingPhone.powerOn();

//   smartPhone.takePhoto();
//   gamingPhone.playGame();
// }

////////////////////////////////////////////////////////

abstract class PaymentMethod {
  void processPayment(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('💳 Processing \$$amount via Credit Card');
    print('   Connecting to bank...');
    print('   Payment authorized!');
  }
}

class PayPal extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('🅿️ Processing \$$amount via PayPal');
    print('   Redirecting to PayPal...');
    print('   Payment complete!');
  }
}

class CryptoCurrency extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('₿ Processing \$$amount via Bitcoin');
    print('   Broadcasting transaction...');
    print('   Waiting for confirmation...');
    print('   Payment confirmed!');
  }
}

void checkout(PaymentMethod paymentMethod, double total) {
  print('\n🛒 Total: \$$total');
  paymentMethod.processPayment(total);
  print('✅ Order confirmed!\n');
}

// void main() {
//   final creditCard = CreditCard();
//   final payPal = PayPal();
//   final cryptoCurrency = CryptoCurrency();

//   checkout(creditCard, 99);
//   checkout(payPal, 199.22);
//   checkout(cryptoCurrency, -111);
// }

////////////////////////////////////////////////////////

mixin Camera on Device {
  int megapixels = 48;

  void takePhoto() {
    print('📸 Capturing $megapixels MP photo with $brand and $model');
  }

  void recordVideo() {
    print('🎥 Recording 4K video...');
  }
}

mixin GPS {
  void getCurrentLocation() {
    print('📍 Location: 16.8661°N, 96.1951°E (Yangon)');
  }

  void navigate(String destination) {
    print('🗺️ Navigating to $destination...');
  }
}

mixin MediaPlayer {
  void playMusic(String song) {
    print('🎵 Playing: $song');
  }

  void pauseMusic() {
    print('⏸️ Music paused');
  }
}

class SmartPhone1 extends Device with Camera, GPS, MediaPlayer {
  // SmartPhone1(String brand, String model) : super(brand: brand, model: model);

  // SmartPhone1({required String brand, required String model}) : super(brand: brand, model: model)

  SmartPhone1({required super.brand, required super.model});
}

void main() {
  final myPhone = SmartPhone1(brand: 'Google', model: 'Pixel 9');

  // From Device (inheritance)
  myPhone.powerOn();

  // From Camera(mixin)
  myPhone.takePhoto();
  myPhone.recordVideo();

  // From GPS (mixin)
  myPhone.getCurrentLocation();
  myPhone.navigate('Downtown');

  // From MediaPlayer (mixin)
  myPhone.playMusic('Bohemian Rhapsody');
  myPhone.pauseMusic();
}
