part of 'category_screen_bloc.dart';

abstract class CategoryScreenState extends Equatable {
  const CategoryScreenState();
}

class CategoryScreenInitial extends CategoryScreenState {
  @override
  List<Object> get props => [];
}

class CategoryScreenLoading extends CategoryScreenState {
  @override
  List<Object> get props => [];
}

class CategoryScreenLoaded extends CategoryScreenState {
  final Menus menus;
  final int index;

  CategoryScreenLoaded(this.menus, this.index) {}
  @override
  List<Object> get props => [menus, index];
}
class CategoryScreenLoadingCollection extends CategoryScreenState {
  @override
  List<Object> get props => [];
}
class CategoryScreenLoadingSubCollection extends CategoryScreenState {
  @override
  List<Object> get props => [];
}
class CategoryScreenLoadedCollection extends CategoryScreenState {

  CategoryScreenLoadedCollection() {}
  @override
  List<Object> get props => [];
}
class CategoryScreenLoadedSubCollection extends CategoryScreenState {

  CategoryScreenLoadedSubCollection() {}
  @override
  List<Object> get props => [];
}

class CategoryScreenNoDataFound extends CategoryScreenState {
  @override
  List<Object> get props => [];
}

class CategoryScreenNoInternetConnection extends CategoryScreenState {
  @override
  List<Object> get props => [];
}


class CategoryScreenItemClick extends CategoryScreenState {
  final int index;
  CategoryScreenItemClick(this.index){}

  @override
  List<Object> get props => [index];
}

class CategoryScreenSubItemClick extends CategoryScreenState {
  final int index;
  CategoryScreenSubItemClick(this.index){}

  @override
  List<Object> get props => [index];
}




