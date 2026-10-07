import "package:get/get.dart";
import "package:aplikasi_list_makanan/models/makanan_model.dart";

class ListMakananController extends GetxController {
  List<MakananModel> ListMakanan = [
    MakananModel(namaMakanan: "Nasi Goreng Katsu", hargaMakanan: "15.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ5ojCQRp7hzNsnJAh-2DObQCN19oGAVDK-Qgv160ZAA&s=10", deskripsiMakanan: "Nasi goreng katsu adalah hidangan nasi goreng yang disajikan dengan potongan daging katsu yang renyah di atasnya. Katsu biasanya terbuat dari daging ayam atau babi yang digoreng dengan tepung roti, memberikan tekstur yang gurih dan renyah. Hidangan ini sering disajikan dengan saus tonkatsu atau saus sambal untuk menambah cita rasa.", ratingMakanan: 4),
    MakananModel(namaMakanan: "Mie Goreng", hargaMakanan: "13.000", imageUrl: "https://awsimages.detik.net.id/community/media/visual/2024/08/14/resep-mie-goreng-udang-teriyaki_43.jpeg?w=1200", deskripsiMakanan: "Mie goreng adalah hidangan mie yang digoreng dengan bumbu dan topping sesuai selera.", ratingMakanan: 4),
    MakananModel(namaMakanan: "Nasi Padang", hargaMakanan: "15.000", imageUrl: "https://awsimages.detik.net.id/community/media/visual/2020/07/06/nasi-padang.jpeg?w=600&q=90", deskripsiMakanan: "Nasi padang adalah nasi yang disajikan dengan berbagai macam lauk pauk khas Padang.", ratingMakanan: 4),
    MakananModel(namaMakanan: "Ayam Serundeng Sambal Bawang", hargaMakanan: "10.000", imageUrl: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/93edf08d-185b-4a73-a6a8-0da9e78e1dc6_Go-Biz_20230909_230034.jpeg", deskripsiMakanan: "Ayam serundeng sambal bawang adalah hidangan ayam yang dimasak dengan serundeng dan sambal bawang.", ratingMakanan: 4),
    MakananModel(namaMakanan: "Ayam Geprek Sambal Ijo", hargaMakanan: "10.000", imageUrl: "https://assets.unileversolutions.com/recipes-v2/230947.jpg", deskripsiMakanan: "Ayam geprek sambal ijo adalah hidangan ayam yang digeprek dan disajikan dengan sambal ijo.", ratingMakanan: 4),
  ];
}
