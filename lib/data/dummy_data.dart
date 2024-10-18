import '../models/city.dart';
import '../models/hotel.dart';

final List<City> cities = [
  City(
    id: '1',
    name: 'Malang',
    category: 'Historical',
    imageUrl: 'https://tripperhood.com/wp-content/uploads/2018/02/malang3.jpg',
    rating: 4.9,
    description: 'Malang is known for its cool climate and historical landmarks.',
  ),
  City(
    id: '2',
    name: 'Jakarta',
    category: 'Metropolitan',
    imageUrl: 'https://wallpapers.com/images/hd/jakarta-city-roundabout-957wm6er9fu1zp8p.jpg',
    rating: 4.8,
    description: 'Jakarta, the bustling capital of Indonesia, offers an exciting cityscape.',
  ),
  City(
    id: '3',
    name: 'Bali',
    category: 'Tourist Destination',
    imageUrl: 'https://blog.bookingtogo.com/wp-content/uploads/2020/12/pura-ulun-danu-bratan-bali-bedugul-scaled.jpg',
    rating: 4.7,
    description: 'Bali is famous for its stunning beaches and vibrant culture.',
  ),
];

final Map<String, List<Hotel>> cityHotels = {
  '1': [
    Hotel(
      id: '101',
      name: 'Hotel Majapahit',
      price: 750000,
      description: 'Luxurious stay with colonial charm and modern amenities.',
      imageUrl: 'https://i.pinimg.com/originals/75/3a/f1/753af1cc486291250a4195dd2051cf7e.jpg',
      features: ['Pool', 'Spa', 'Restaurant', 'Gym'],
    ),
    Hotel(
      id: '102',
      name: 'Kertanegara Premium Guest House',
      price: 350000,
      description: 'Comfortable and cozy guesthouse in the heart of Malang.',
      imageUrl: 'https://media-cdn.tripadvisor.com/media/photo-s/1d/84/f3/35/bournemouth-carlton-hotel.jpg',
      features: ['Free WiFi', 'Inclusive Breakfast', '24/7 Service'],
    ),
    Hotel(
      id: '103',
      name: 'Atria Hotel Malang',
      price: 500000,
      description: 'A perfect blend of affordability and comfort.',
      imageUrl: 'https://dogsinvited.co.uk/wp-content/uploads/2021/07/Marsham-Court-Hotel-Dorset-pool.jpg',
      features: ['Pool', 'Conference Room', 'Parking'],
    ),
  ],
  '2': [
    Hotel(
      id: '201',
      name: 'The Hermitage',
      price: 1200000,
      description: 'A heritage hotel that reflects Jakarta\'s rich history.',
      imageUrl: 'https://hotelsareamazing.com/wp-content/uploads/2020/02/Royal-Bath-Hotel-Spa-Bournemouth-768x449.jpg',
      features: ['Luxury Suite', 'Rooftop Bar', 'Art Deco Design'],
    ),
    Hotel(
      id: '202',
      name: 'Raffles Jakarta',
      price: 1800000,
      description: 'Synonymous with unparalleled luxury and service.',
      imageUrl: 'https://i.pinimg.com/736x/1c/20/d3/1c20d3899440f1eaefbb2c08b6f0fb41.jpg',
      features: ['Private Butler', 'Designer Rooms', 'Exclusive Spa'],
    ),
  ],
  '3': [
    Hotel(
      id: '301',
      name: 'Bali Garden Beach Resort',
      price: 900000,
      description: 'Beachfront resort with traditional Balinese hospitality.',
      imageUrl: 'https://www.vivood.com/vivood/imagenes/hotel-en-la-naturaleza-1.jpg',
      features: ['Beach Access', 'Multiple Restaurants', 'Spa'],
    ),
    Hotel(
      id: '302',
      name: 'Alila Ubud',
      price: 1300000,
      description: 'Experience tranquility and stunning forest views.',
      imageUrl: 'https://tripatak.com/wp-content/uploads/2017/08/Rixos-Sharm-El-Sheikh-40-723x407.jpg',
      features: ['Infinity Pool', 'Yoga Classes', 'Eco-Friendly Practices'],
    ),
  ],
};
