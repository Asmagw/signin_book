class Catag {
  final String image; // صورة
  final String dep; // التخصص
  final String depId; // معرف القسم
  final int id; // معرف المنتج أو الفئة
  final String name; // اسم الفئة
  final String url; // رابط المشروع
  final String year; // السنة

  Catag({
    required this.id,
    required this.dep,
    required this.depId,
    required this.image,
    required this.name,
    required this.url,
    required this.year,
  });
}

List<Catag> catagList = [
  Catag(
    id: 1,
    image: "images/",
    dep: "الوسائط المتعددة",
    depId: "o0dxk6v4C3zjGu3edhWO",
    name: "تصميم وتنفيذ جهاز الاستدعاء بين المريض وطاقم التمريض",
    url: "C:\\Users\\asus\\Documents\\مشروع التخرج بالكامل",
    year: "2017",
  ),
];
