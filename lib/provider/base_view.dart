import 'package:hobnob/provider/getit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'base_model.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final Function(T) onModelReady;
  final Function(T) onModelDisposed;
  final Widget child;

  BaseView(
      {required this.builder,
      required this.onModelReady,
      required this.child,
      required this.onModelDisposed});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  T model = getIt<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onModelDisposed != null) {
      widget.onModelDisposed(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: model,
        child: Consumer<T>(
          builder: widget.builder,
          child: widget.child,
        ));
  }
}