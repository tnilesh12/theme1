class ImageBannerSliderData {
  String? slideHeight;
  String? autoSwitchSlides;
  int? changeSlidesEvery;
  List<ImageBanner>? imageBanner;

  ImageBannerSliderData(
      {this.slideHeight,
      this.autoSwitchSlides,
      this.changeSlidesEvery,
      this.imageBanner});

  ImageBannerSliderData.fromJson(Map<String, dynamic> json) {
    slideHeight = json['SlideHeight'];
    autoSwitchSlides = json['AutoSwitchSlides'];
    changeSlidesEvery = json['ChangeSlidesEvery'];
    if (json['ImageBanner'] != null) {
      imageBanner = <ImageBanner>[];
      json['ImageBanner'].forEach((v) {
        imageBanner!.add(new ImageBanner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SlideHeight'] = this.slideHeight;
    data['AutoSwitchSlides'] = this.autoSwitchSlides;
    data['ChangeSlidesEvery'] = this.changeSlidesEvery;
    if (this.imageBanner != null) {
      data['ImageBanner'] = this.imageBanner!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImageBanner {
  String? imageSrc;
  String? subheading;
  String? heading;
  String? primarybuttonlabel;
  String? primarybuttonlink;
  String? secondarybuttonlabel;
  String? secondarybuttonlink;
  String? productTitlePrimary;
  String? productTitleSecondary;
  String? primarybtnId;
  String? secondarybtnId;

  ImageBanner(
      {this.imageSrc,
      this.subheading,
      this.heading,
      this.primarybuttonlabel,
      this.primarybuttonlink,
      this.secondarybuttonlabel,
      this.secondarybuttonlink,
      this.productTitlePrimary,
      this.productTitleSecondary,
      this.primarybtnId,
      this.secondarybtnId});

  ImageBanner.fromJson(Map<String, dynamic> json) {
    imageSrc = json['ImageSrc'];
    subheading = json['Subheading'];
    heading = json['Heading'];
    primarybuttonlabel = json['Primarybuttonlabel'];
    primarybuttonlink = json['Primarybuttonlink'];
    secondarybuttonlabel = json['Secondarybuttonlabel'];
    secondarybuttonlink = json['Secondarybuttonlink'];
    productTitlePrimary = json['productTitlePrimary'];
    productTitleSecondary = json['productTitleSecondary'];
    primarybtnId = json['PrimarybtnId'];
    secondarybtnId = json['SecondarybtnId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageSrc'] = this.imageSrc;
    data['Subheading'] = this.subheading;
    data['Heading'] = this.heading;
    data['Primarybuttonlabel'] = this.primarybuttonlabel;
    data['Primarybuttonlink'] = this.primarybuttonlink;
    data['Secondarybuttonlabel'] = this.secondarybuttonlabel;
    data['Secondarybuttonlink'] = this.secondarybuttonlink;
    data['productTitlePrimary'] = this.productTitlePrimary;
    data['productTitleSecondary'] = this.productTitleSecondary;
    data['PrimarybtnId'] = this.primarybtnId;
    data['SecondarybtnId'] = this.secondarybtnId;
    return data;
  }
}
class ScrollingTextData {
  int? scrollingSpeed;
  List<ScrollingList>? scrollingList;

  ScrollingTextData({this.scrollingSpeed, this.scrollingList});

  ScrollingTextData.fromJson(Map<String, dynamic> json) {
    scrollingSpeed = json['ScrollingSpeed'];
    if (json['ScrollingList'] != null) {
      scrollingList = <ScrollingList>[];
      json['ScrollingList'].forEach((v) {
        scrollingList!.add(new ScrollingList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ScrollingSpeed'] = this.scrollingSpeed;
    if (this.scrollingList != null) {
      data['ScrollingList'] =
          this.scrollingList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ScrollingList {
  String? text;
  String? action;
  String? id;
  String? productTitle;

  ScrollingList({this.text, this.action, this.id, this.productTitle});

  ScrollingList.fromJson(Map<String, dynamic> json) {
    text = json['Text'];
    action = json['Action'];
    id = json['id'];
    productTitle = json['productTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Text'] = this.text;
    data['Action'] = this.action;
    data['id'] = this.id;
    data['productTitle'] = this.productTitle;
    return data;
  }
}

class CollectionGridData {
  String? heading;
  String? enableSlider;
  int? columns;
  int? rows;
  List<CollectionList>? collectionList;

  CollectionGridData(
      {this.heading,
      this.enableSlider,
      this.columns,
      this.rows,
      this.collectionList});

  CollectionGridData.fromJson(Map<String, dynamic> json) {
    heading = json['Heading'];
    enableSlider = json['Enable_Slider'];
    columns = json['Columns'];
    rows = json['Rows'];
    if (json['CollectionList'] != null) {
      collectionList = <CollectionList>[];
      json['CollectionList'].forEach((v) {
        collectionList!.add(new CollectionList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Heading'] = this.heading;
    data['Enable_Slider'] = this.enableSlider;
    data['Columns'] = this.columns;
    data['Rows'] = this.rows;
    if (this.collectionList != null) {
      data['CollectionList'] =
          this.collectionList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CollectionList {
  String? imageSrc;
  String? productTitle;
  String? action;
  String? id;

  CollectionList({this.imageSrc, this.productTitle, this.action, this.id});

  CollectionList.fromJson(Map<String, dynamic> json) {
    imageSrc = json['ImageSrc'];
    productTitle = json['productTitle'];
    action = json['Action'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageSrc'] = this.imageSrc;
    data['productTitle'] = this.productTitle;
    data['Action'] = this.action;
    data['id'] = this.id;
    return data;
  }
}

class ProductGridData {
  String? heading;
  String? enableSlider;
  int? columns;
  int? show;
  bool? viewAll;
  String? imageRatio;
  List<ProductList>? productList;

  ProductGridData(
      {this.heading,
      this.enableSlider,
      this.columns,
      this.show,
      this.viewAll,
      this.imageRatio,
      this.productList});

  ProductGridData.fromJson(Map<String, dynamic> json) {
    heading = json['Heading'];
    enableSlider = json['Enable_Slider'];
    columns = json['Columns'];
    show = json['Show'];
    viewAll = json['view_all'];
    imageRatio = json['Image_Ratio'];
    if (json['ProductList'] != null) {
      productList = <ProductList>[];
      json['ProductList'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Heading'] = this.heading;
    data['Enable_Slider'] = this.enableSlider;
    data['Columns'] = this.columns;
    data['Show'] = this.show;
    data['view_all'] = this.viewAll;
    data['Image_Ratio'] = this.imageRatio;
    if (this.productList != null) {
      data['ProductList'] = this.productList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductList {
  String? imageSrc;
  String? productTitle;
  String? action;
  String? id;
  String? category;
  String? ratings;
  String? discountedPrice;
  String? price;

  ProductList(
      {this.imageSrc,
      this.productTitle,
      this.action,
      this.id,
      this.category,
      this.ratings,
      this.discountedPrice,
      this.price});

  ProductList.fromJson(Map<String, dynamic> json) {
    imageSrc = json['ImageSrc'];
    productTitle = json['productTitle'];
    action = json['Action'];
    id = json['id'];
    category = json['category'];
    ratings = json['ratings'];
    discountedPrice = json['discountedPrice'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageSrc'] = this.imageSrc;
    data['productTitle'] = this.productTitle;
    data['Action'] = this.action;
    data['id'] = this.id;
    data['category'] = this.category;
    data['ratings'] = this.ratings;
    data['discountedPrice'] = this.discountedPrice;
    data['price'] = this.price;
    return data;
  }
}

class TestimonialsData {
  List<TestimonialsList>? testimonialsList;

  TestimonialsData({this.testimonialsList});

  TestimonialsData.fromJson(Map<String, dynamic> json) {
    if (json['TestimonialsList'] != null) {
      testimonialsList = <TestimonialsList>[];
      json['TestimonialsList'].forEach((v) {
        testimonialsList!.add(new TestimonialsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testimonialsList != null) {
      data['TestimonialsList'] =
          this.testimonialsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TestimonialsList {
  String? quote;
  String? authorDesignation;
  String? authorName;

  TestimonialsList({this.quote, this.authorDesignation, this.authorName});

  TestimonialsList.fromJson(Map<String, dynamic> json) {
    quote = json['Quote'];
    authorDesignation = json['Author_designation'];
    authorName = json['Author_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Quote'] = this.quote;
    data['Author_designation'] = this.authorDesignation;
    data['Author_name'] = this.authorName;
    return data;
  }
}

class ImageWithTextData {
  String? image;
  String? subheading;
  String? heading;
  String? description;
  String? buttonLabel;
  String? productTitle;
  String? action;
  String? id;

  ImageWithTextData(
      {this.image,
      this.subheading,
      this.heading,
      this.description,
      this.buttonLabel,
      this.productTitle,
      this.action,
      this.id});

  ImageWithTextData.fromJson(Map<String, dynamic> json) {
    image = json['Image'];
    subheading = json['Subheading'];
    heading = json['Heading'];
    description = json['Description'];
    buttonLabel = json['Button_label'];
    productTitle = json['productTitle'];
    action = json['Action'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Image'] = this.image;
    data['Subheading'] = this.subheading;
    data['Heading'] = this.heading;
    data['Description'] = this.description;
    data['Button_label'] = this.buttonLabel;
    data['productTitle'] = this.productTitle;
    data['Action'] = this.action;
    data['id'] = this.id;
    return data;
  }
}

class Divider {
  int? space;

  Divider({this.space});

  Divider.fromJson(Map<String, dynamic> json) {
    space = json['Space'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Space'] = this.space;
    return data;
  }
}

class IconTextData {
  List<IconWithTextList>? iconWithTextList;

  IconTextData({this.iconWithTextList});

  IconTextData.fromJson(Map<String, dynamic> json) {
    if (json['IconWithTextList'] != null) {
      iconWithTextList = <IconWithTextList>[];
      json['IconWithTextList'].forEach((v) {
        iconWithTextList!.add(new IconWithTextList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iconWithTextList != null) {
      data['IconWithTextList'] =
          this.iconWithTextList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IconWithTextList {
  String? title;
  String? column;
  String? clickToUploadImage;
  String? description;

  IconWithTextList(
      {this.title, this.column, this.clickToUploadImage, this.description});

  IconWithTextList.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    column = json['Column'];
    clickToUploadImage = json['Click to upload Image'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Column'] = this.column;
    data['Click to upload Image'] = this.clickToUploadImage;
    data['Description'] = this.description;
    return data;
  }
}

class VideoData {
  String? heading;
  String? uRL;
  String? coverImage;
  bool? autoplay;
  String? videoAltText;

  VideoData(
      {this.heading,
      this.uRL,
      this.coverImage,
      this.autoplay,
      this.videoAltText});

  VideoData.fromJson(Map<String, dynamic> json) {
    heading = json['Heading'];
    uRL = json['URL'];
    coverImage = json['Cover_Image'];
    autoplay = json['Autoplay'];
    videoAltText = json['VideoAltText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Heading'] = this.heading;
    data['URL'] = this.uRL;
    data['Cover_Image'] = this.coverImage;
    data['Autoplay'] = this.autoplay;
    data['VideoAltText'] = this.videoAltText;
    return data;
  }
}

class SearchData {
  String? heading;
  String? style;

  SearchData({this.heading, this.style});

  SearchData.fromJson(Map<String, dynamic> json) {
    heading = json['Heading'];
    style = json['Style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Heading'] = this.heading;
    data['Style'] = this.style;
    return data;
  }
}

class ComparisonData {
  String? heading;
  String? beforeImageSrc;
  String? afterImageSrc;
  String? imageHeight;

  ComparisonData(
      {this.heading,
      this.beforeImageSrc,
      this.afterImageSrc,
      this.imageHeight});

  ComparisonData.fromJson(Map<String, dynamic> json) {
    heading = json['Heading'];
    beforeImageSrc = json['Before_Image_src'];
    afterImageSrc = json['After_Image_src'];
    imageHeight = json['Image_height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Heading'] = this.heading;
    data['Before_Image_src'] = this.beforeImageSrc;
    data['After_Image_src'] = this.afterImageSrc;
    data['Image_height'] = this.imageHeight;
    return data;
  }
}

class DiscountData {
  List<DiscountList>? discountList;

  DiscountData({this.discountList});

  DiscountData.fromJson(Map<String, dynamic> json) {
    if (json['DiscountList'] != null) {
      discountList = <DiscountList>[];
      json['DiscountList'].forEach((v) {
        discountList!.add(new DiscountList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.discountList != null) {
      data['DiscountList'] = this.discountList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DiscountList {
  String? title;
  Null? imageSrc;
  String? description;

  DiscountList({this.title, this.imageSrc, this.description});

  DiscountList.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    imageSrc = json['ImageSrc'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['ImageSrc'] = this.imageSrc;
    data['Description'] = this.description;
    return data;
  }
}





