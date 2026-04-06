import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/item.dart';

class FirestoreService {
  final CollectionReference _itemsCollection =
      FirebaseFirestore.instance.collection('items');

  // will stream all items
  Stream<List<Item>> streamItems() {
    return _itemsCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return Item.fromMap(doc.id, doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  Future<void> addItem(Item item) async {
    await _itemsCollection.add(item.toMap());
  }

  // Update existing item
  Future<void> updateItem(Item item) async {
    if (item.id != null) {
      await _itemsCollection.doc(item.id).update(item.toMap());
    }
  }

  Future<void> deleteItem(String id) async {
    await _itemsCollection.doc(id).delete();
  }
}
