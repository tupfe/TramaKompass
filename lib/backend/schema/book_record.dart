import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookRecord extends FirestoreRecord {
  BookRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BookName" field.
  String? _bookName;
  String get bookName => _bookName ?? '';
  bool hasBookName() => _bookName != null;

  // "BookPath" field.
  String? _bookPath;
  String get bookPath => _bookPath ?? '';
  bool hasBookPath() => _bookPath != null;

  // "BookURL" field.
  String? _bookURL;
  String get bookURL => _bookURL ?? '';
  bool hasBookURL() => _bookURL != null;

  // "BookContent" field.
  String? _bookContent;
  String get bookContent => _bookContent ?? '';
  bool hasBookContent() => _bookContent != null;

  // "BookHeader" field.
  String? _bookHeader;
  String get bookHeader => _bookHeader ?? '';
  bool hasBookHeader() => _bookHeader != null;

  void _initializeFields() {
    _bookName = snapshotData['BookName'] as String?;
    _bookPath = snapshotData['BookPath'] as String?;
    _bookURL = snapshotData['BookURL'] as String?;
    _bookContent = snapshotData['BookContent'] as String?;
    _bookHeader = snapshotData['BookHeader'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Book');

  static Stream<BookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookRecord.fromSnapshot(s));

  static Future<BookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookRecord.fromSnapshot(s));

  static BookRecord fromSnapshot(DocumentSnapshot snapshot) => BookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookRecordData({
  String? bookName,
  String? bookPath,
  String? bookURL,
  String? bookContent,
  String? bookHeader,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BookName': bookName,
      'BookPath': bookPath,
      'BookURL': bookURL,
      'BookContent': bookContent,
      'BookHeader': bookHeader,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookRecordDocumentEquality implements Equality<BookRecord> {
  const BookRecordDocumentEquality();

  @override
  bool equals(BookRecord? e1, BookRecord? e2) {
    return e1?.bookName == e2?.bookName &&
        e1?.bookPath == e2?.bookPath &&
        e1?.bookURL == e2?.bookURL &&
        e1?.bookContent == e2?.bookContent &&
        e1?.bookHeader == e2?.bookHeader;
  }

  @override
  int hash(BookRecord? e) => const ListEquality().hash(
      [e?.bookName, e?.bookPath, e?.bookURL, e?.bookContent, e?.bookHeader]);

  @override
  bool isValidKey(Object? o) => o is BookRecord;
}
