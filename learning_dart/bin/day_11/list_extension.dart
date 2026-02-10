extension ListExtension<T> on List<T> {
  List<T> get unique {
    return toSet().toList();
  }
}

// extension ListIntExtension on List<int> {
//   List<int> get unique {
//     return toSet().toList();
//   }
// }

// extension ListStringExtension on List<String> {
//   List<String> get unique {
//     return toSet().toList();
//   }
// }

