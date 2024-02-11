part of 'view_item_cubit.dart';

@immutable
sealed class ViewItemState {}

final class ViewItemInitial extends ViewItemState {}

final class ViewItemChange extends ViewItemState {}
