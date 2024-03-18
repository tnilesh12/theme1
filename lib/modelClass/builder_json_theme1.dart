import '../../modelClass/data_model.dart';

class BuilderJsonTheme1Model {
  List<BuilderJsonTheme1>? builderJsonTheme1;

  BuilderJsonTheme1Model({
      this.builderJsonTheme1});

  BuilderJsonTheme1Model.fromJson(Map<String, dynamic> json) {
    if (json['BuilderJsonTheme1'] != null) {
      builderJsonTheme1 = <BuilderJsonTheme1>[];
      json['BuilderJsonTheme1'].forEach((v) {
        builderJsonTheme1!.add(new BuilderJsonTheme1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.builderJsonTheme1 != null) {
      data['BuilderJsonTheme1'] = this.builderJsonTheme1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BuilderJsonTheme1 {
  String? blockName;
  ImageBannerSliderData? imageBannerSliderData;
  ScrollingTextData? scrollingTextData;
  CollectionGridData? collectionGridData;
  ProductGridData? productGridData;
  TestimonialsData? testimonialsData;
  ImageWithTextData? imageWithTextData;
  DividerData? dividerData;
  IconTextData? iconTextData;
  VideoData? videoData;
  SearchData? searchData;
  ComparisonData? comparisonData;
  DiscountData? discountData;

  BuilderJsonTheme1(
      {this.blockName,
      this.imageBannerSliderData,
      this.scrollingTextData,
      this.collectionGridData,
      this.productGridData,
      this.testimonialsData,
      this.imageWithTextData,
      this.dividerData,
      this.iconTextData,
      this.videoData,
      this.searchData,
      this.comparisonData,
      this.discountData});

  BuilderJsonTheme1.fromJson(Map<String, dynamic> json) {
    blockName = json['Block_Name'];
    imageBannerSliderData = json['ImageBannerSliderData'] != null
        ? new ImageBannerSliderData.fromJson(json['ImageBannerSliderData'])
        : null;
    scrollingTextData = json['ScrollingTextData'] != null
        ? new ScrollingTextData.fromJson(json['ScrollingTextData'])
        : null;
    collectionGridData = json['collectionGridData'] != null
        ? new CollectionGridData.fromJson(json['collectionGridData'])
        : null;
    productGridData = json['ProductGridData'] != null
        ? new ProductGridData.fromJson(json['ProductGridData'])
        : null;
    testimonialsData = json['TestimonialsData'] != null
        ? new TestimonialsData.fromJson(json['TestimonialsData'])
        : null;
    imageWithTextData = json['ImageWithTextData'] != null
        ? new ImageWithTextData.fromJson(json['ImageWithTextData'])
        : null;
    dividerData = json['Divider'] != null
        ? new DividerData.fromJson(json['Divider'])
        : null;
    iconTextData = json['IconTextData'] != null
        ? new IconTextData.fromJson(json['IconTextData'])
        : null;
    videoData = json['VideoData'] != null
        ? new VideoData.fromJson(json['VideoData'])
        : null;
    searchData = json['SearchData'] != null
        ? new SearchData.fromJson(json['SearchData'])
        : null;
    comparisonData = json['ComparisonData'] != null
        ? new ComparisonData.fromJson(json['ComparisonData'])
        : null;
    discountData = json['DiscountData'] != null
        ? new DiscountData.fromJson(json['DiscountData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Block_Name'] = this.blockName;
    if (this.imageBannerSliderData != null) {
      data['ImageBannerSliderData'] = this.imageBannerSliderData!.toJson();
    }
    if (this.scrollingTextData != null) {
      data['ScrollingTextData'] = this.scrollingTextData!.toJson();
    }
    if (this.collectionGridData != null) {
      data['collectionGridData'] = this.collectionGridData!.toJson();
    }
    if (this.productGridData != null) {
      data['ProductGridData'] = this.productGridData!.toJson();
    }
    if (this.testimonialsData != null) {
      data['TestimonialsData'] = this.testimonialsData!.toJson();
    }
    if (this.imageWithTextData != null) {
      data['ImageWithTextData'] = this.imageWithTextData!.toJson();
    }
    if (this.dividerData != null) {
      data['Divider'] = this.dividerData!.toJson();
    }
    if (this.iconTextData != null) {
      data['IconTextData'] = this.iconTextData!.toJson();
    }
    if (this.videoData != null) {
      data['VideoData'] = this.videoData!.toJson();
    }
    if (this.searchData != null) {
      data['SearchData'] = this.searchData!.toJson();
    }
    if (this.comparisonData != null) {
      data['ComparisonData'] = this.comparisonData!.toJson();
    }
    if (this.discountData != null) {
      data['DiscountData'] = this.discountData!.toJson();
    }
    return data;
  }
}
