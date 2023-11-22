import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  /// 0文字の場合はonSubmittedを実行しない
  ///
  /// 256文字以上は入力できない
  const SearchAppBar({
    super.key,
    required TextEditingController textEditingController,
    void Function(String)? onChanged,
    void Function(String)? onSubmitted,
  })  : _textEditingController = textEditingController,
        _onChanged = onChanged,
        _onSubmitted = onSubmitted;

  final TextEditingController _textEditingController;
  final void Function(String)? _onChanged;
  final void Function(String)? _onSubmitted;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SearchBar(
        elevation: const MaterialStatePropertyAll(0), // appbarと同じ高さに
        controller: _textEditingController,
        backgroundColor: MaterialStatePropertyAll(Colors.grey.withOpacity(0.1)),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.search),
        ),
        trailing: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: _textEditingController.clear,
          ),
        ],
        onChanged: (text) {
          // 256文字以上はエラーが返ってくるので、入力できないようにする
          // これはGithubAPIに依存しているので、Repositoryで制御するべき??
          if (text.length >= 256) {
            _textEditingController.text = text.substring(0, 255);
          }
          if (_onChanged == null) {
            return;
          }
          _onChanged!(text);
        },
        onSubmitted: (text) {
          // 0文字では検索できない
          if (text.isEmpty) {
            return;
          }
          if (_onSubmitted == null) {
            return;
          }
          _onSubmitted!(text);
        },
      ),
    );
  }
}
