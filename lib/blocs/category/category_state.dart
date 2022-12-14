part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Category> categories;
  final Category? selecetedCategory;

  const CategoryLoaded(
      {this.categories = const <Category>[], this.selecetedCategory});

  @override
  List<Object?> get props => [categories, selecetedCategory];
}
