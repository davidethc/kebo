// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTransactionState {
  String get amount => throw _privateConstructorUsedError;
  String get merchant => throw _privateConstructorUsedError;
  String get merchantWebsite => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get valueDate => throw _privateConstructorUsedError;
  List<CategoryEntity> get categories => throw _privateConstructorUsedError;
  List<SubcategoryEntity> get subcategories =>
      throw _privateConstructorUsedError;
  List<TypeTransaction> get type => throw _privateConstructorUsedError;
  int get indexCategory => throw _privateConstructorUsedError;
  int get indexSubcategory => throw _privateConstructorUsedError;
  int get indexType => throw _privateConstructorUsedError;
  bool get errorCategory => throw _privateConstructorUsedError;
  bool get errorSubcategory => throw _privateConstructorUsedError;
  bool get errorType => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorAmount => throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorMerchant =>
      throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorMerchantWebsite =>
      throw _privateConstructorUsedError;
  AppInputErrorRequired? get errorDescription =>
      throw _privateConstructorUsedError;
  AppFailure? get failure => throw _privateConstructorUsedError;
  bool get focusStatusAmount => throw _privateConstructorUsedError;
  bool get focusStatusMerchant => throw _privateConstructorUsedError;
  bool get focusStatusMerchantWebsite => throw _privateConstructorUsedError;
  bool get focusStatusDescription => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionStateCopyWith<AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionStateCopyWith<$Res> {
  factory $AddTransactionStateCopyWith(
          AddTransactionState value, $Res Function(AddTransactionState) then) =
      _$AddTransactionStateCopyWithImpl<$Res, AddTransactionState>;
  @useResult
  $Res call(
      {String amount,
      String merchant,
      String merchantWebsite,
      String description,
      DateTime? valueDate,
      List<CategoryEntity> categories,
      List<SubcategoryEntity> subcategories,
      List<TypeTransaction> type,
      int indexCategory,
      int indexSubcategory,
      int indexType,
      bool errorCategory,
      bool errorSubcategory,
      bool errorType,
      AppInputErrorRequired? errorAmount,
      AppInputErrorRequired? errorMerchant,
      AppInputErrorRequired? errorMerchantWebsite,
      AppInputErrorRequired? errorDescription,
      AppFailure? failure,
      bool focusStatusAmount,
      bool focusStatusMerchant,
      bool focusStatusMerchantWebsite,
      bool focusStatusDescription,
      bool isLoading,
      bool isProcessing,
      bool isDone});

  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AddTransactionStateCopyWithImpl<$Res, $Val extends AddTransactionState>
    implements $AddTransactionStateCopyWith<$Res> {
  _$AddTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? merchant = null,
    Object? merchantWebsite = null,
    Object? description = null,
    Object? valueDate = freezed,
    Object? categories = null,
    Object? subcategories = null,
    Object? type = null,
    Object? indexCategory = null,
    Object? indexSubcategory = null,
    Object? indexType = null,
    Object? errorCategory = null,
    Object? errorSubcategory = null,
    Object? errorType = null,
    Object? errorAmount = freezed,
    Object? errorMerchant = freezed,
    Object? errorMerchantWebsite = freezed,
    Object? errorDescription = freezed,
    Object? failure = freezed,
    Object? focusStatusAmount = null,
    Object? focusStatusMerchant = null,
    Object? focusStatusMerchantWebsite = null,
    Object? focusStatusDescription = null,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String,
      merchantWebsite: null == merchantWebsite
          ? _value.merchantWebsite
          : merchantWebsite // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryEntity>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeTransaction>,
      indexCategory: null == indexCategory
          ? _value.indexCategory
          : indexCategory // ignore: cast_nullable_to_non_nullable
              as int,
      indexSubcategory: null == indexSubcategory
          ? _value.indexSubcategory
          : indexSubcategory // ignore: cast_nullable_to_non_nullable
              as int,
      indexType: null == indexType
          ? _value.indexType
          : indexType // ignore: cast_nullable_to_non_nullable
              as int,
      errorCategory: null == errorCategory
          ? _value.errorCategory
          : errorCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSubcategory: null == errorSubcategory
          ? _value.errorSubcategory
          : errorSubcategory // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as bool,
      errorAmount: freezed == errorAmount
          ? _value.errorAmount
          : errorAmount // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorMerchant: freezed == errorMerchant
          ? _value.errorMerchant
          : errorMerchant // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorMerchantWebsite: freezed == errorMerchantWebsite
          ? _value.errorMerchantWebsite
          : errorMerchantWebsite // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusAmount: null == focusStatusAmount
          ? _value.focusStatusAmount
          : focusStatusAmount // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusMerchant: null == focusStatusMerchant
          ? _value.focusStatusMerchant
          : focusStatusMerchant // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusMerchantWebsite: null == focusStatusMerchantWebsite
          ? _value.focusStatusMerchantWebsite
          : focusStatusMerchantWebsite // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusDescription: null == focusStatusDescription
          ? _value.focusStatusDescription
          : focusStatusDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AppFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTransactionStateImplCopyWith<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  factory _$$AddTransactionStateImplCopyWith(_$AddTransactionStateImpl value,
          $Res Function(_$AddTransactionStateImpl) then) =
      __$$AddTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String amount,
      String merchant,
      String merchantWebsite,
      String description,
      DateTime? valueDate,
      List<CategoryEntity> categories,
      List<SubcategoryEntity> subcategories,
      List<TypeTransaction> type,
      int indexCategory,
      int indexSubcategory,
      int indexType,
      bool errorCategory,
      bool errorSubcategory,
      bool errorType,
      AppInputErrorRequired? errorAmount,
      AppInputErrorRequired? errorMerchant,
      AppInputErrorRequired? errorMerchantWebsite,
      AppInputErrorRequired? errorDescription,
      AppFailure? failure,
      bool focusStatusAmount,
      bool focusStatusMerchant,
      bool focusStatusMerchantWebsite,
      bool focusStatusDescription,
      bool isLoading,
      bool isProcessing,
      bool isDone});

  @override
  $AppFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AddTransactionStateImplCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res, _$AddTransactionStateImpl>
    implements _$$AddTransactionStateImplCopyWith<$Res> {
  __$$AddTransactionStateImplCopyWithImpl(_$AddTransactionStateImpl _value,
      $Res Function(_$AddTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? merchant = null,
    Object? merchantWebsite = null,
    Object? description = null,
    Object? valueDate = freezed,
    Object? categories = null,
    Object? subcategories = null,
    Object? type = null,
    Object? indexCategory = null,
    Object? indexSubcategory = null,
    Object? indexType = null,
    Object? errorCategory = null,
    Object? errorSubcategory = null,
    Object? errorType = null,
    Object? errorAmount = freezed,
    Object? errorMerchant = freezed,
    Object? errorMerchantWebsite = freezed,
    Object? errorDescription = freezed,
    Object? failure = freezed,
    Object? focusStatusAmount = null,
    Object? focusStatusMerchant = null,
    Object? focusStatusMerchantWebsite = null,
    Object? focusStatusDescription = null,
    Object? isLoading = null,
    Object? isProcessing = null,
    Object? isDone = null,
  }) {
    return _then(_$AddTransactionStateImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String,
      merchantWebsite: null == merchantWebsite
          ? _value.merchantWebsite
          : merchantWebsite // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryEntity>,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeTransaction>,
      indexCategory: null == indexCategory
          ? _value.indexCategory
          : indexCategory // ignore: cast_nullable_to_non_nullable
              as int,
      indexSubcategory: null == indexSubcategory
          ? _value.indexSubcategory
          : indexSubcategory // ignore: cast_nullable_to_non_nullable
              as int,
      indexType: null == indexType
          ? _value.indexType
          : indexType // ignore: cast_nullable_to_non_nullable
              as int,
      errorCategory: null == errorCategory
          ? _value.errorCategory
          : errorCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSubcategory: null == errorSubcategory
          ? _value.errorSubcategory
          : errorSubcategory // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as bool,
      errorAmount: freezed == errorAmount
          ? _value.errorAmount
          : errorAmount // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorMerchant: freezed == errorMerchant
          ? _value.errorMerchant
          : errorMerchant // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorMerchantWebsite: freezed == errorMerchantWebsite
          ? _value.errorMerchantWebsite
          : errorMerchantWebsite // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as AppInputErrorRequired?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
      focusStatusAmount: null == focusStatusAmount
          ? _value.focusStatusAmount
          : focusStatusAmount // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusMerchant: null == focusStatusMerchant
          ? _value.focusStatusMerchant
          : focusStatusMerchant // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusMerchantWebsite: null == focusStatusMerchantWebsite
          ? _value.focusStatusMerchantWebsite
          : focusStatusMerchantWebsite // ignore: cast_nullable_to_non_nullable
              as bool,
      focusStatusDescription: null == focusStatusDescription
          ? _value.focusStatusDescription
          : focusStatusDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddTransactionStateImpl extends _AddTransactionState {
  const _$AddTransactionStateImpl(
      {this.amount = '',
      this.merchant = '',
      this.merchantWebsite = '',
      this.description = '',
      this.valueDate,
      final List<CategoryEntity> categories = const [],
      final List<SubcategoryEntity> subcategories = const [],
      final List<TypeTransaction> type = const [],
      this.indexCategory = -1,
      this.indexSubcategory = -1,
      this.indexType = -1,
      this.errorCategory = false,
      this.errorSubcategory = false,
      this.errorType = false,
      this.errorAmount,
      this.errorMerchant,
      this.errorMerchantWebsite,
      this.errorDescription,
      this.failure,
      this.focusStatusAmount = false,
      this.focusStatusMerchant = false,
      this.focusStatusMerchantWebsite = false,
      this.focusStatusDescription = false,
      this.isLoading = false,
      this.isProcessing = false,
      this.isDone = false})
      : _categories = categories,
        _subcategories = subcategories,
        _type = type,
        super._();

  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String merchant;
  @override
  @JsonKey()
  final String merchantWebsite;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? valueDate;
  final List<CategoryEntity> _categories;
  @override
  @JsonKey()
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<SubcategoryEntity> _subcategories;
  @override
  @JsonKey()
  List<SubcategoryEntity> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  final List<TypeTransaction> _type;
  @override
  @JsonKey()
  List<TypeTransaction> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  @JsonKey()
  final int indexCategory;
  @override
  @JsonKey()
  final int indexSubcategory;
  @override
  @JsonKey()
  final int indexType;
  @override
  @JsonKey()
  final bool errorCategory;
  @override
  @JsonKey()
  final bool errorSubcategory;
  @override
  @JsonKey()
  final bool errorType;
  @override
  final AppInputErrorRequired? errorAmount;
  @override
  final AppInputErrorRequired? errorMerchant;
  @override
  final AppInputErrorRequired? errorMerchantWebsite;
  @override
  final AppInputErrorRequired? errorDescription;
  @override
  final AppFailure? failure;
  @override
  @JsonKey()
  final bool focusStatusAmount;
  @override
  @JsonKey()
  final bool focusStatusMerchant;
  @override
  @JsonKey()
  final bool focusStatusMerchantWebsite;
  @override
  @JsonKey()
  final bool focusStatusDescription;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'AddTransactionState(amount: $amount, merchant: $merchant, merchantWebsite: $merchantWebsite, description: $description, valueDate: $valueDate, categories: $categories, subcategories: $subcategories, type: $type, indexCategory: $indexCategory, indexSubcategory: $indexSubcategory, indexType: $indexType, errorCategory: $errorCategory, errorSubcategory: $errorSubcategory, errorType: $errorType, errorAmount: $errorAmount, errorMerchant: $errorMerchant, errorMerchantWebsite: $errorMerchantWebsite, errorDescription: $errorDescription, failure: $failure, focusStatusAmount: $focusStatusAmount, focusStatusMerchant: $focusStatusMerchant, focusStatusMerchantWebsite: $focusStatusMerchantWebsite, focusStatusDescription: $focusStatusDescription, isLoading: $isLoading, isProcessing: $isProcessing, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionStateImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.merchantWebsite, merchantWebsite) ||
                other.merchantWebsite == merchantWebsite) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.indexCategory, indexCategory) ||
                other.indexCategory == indexCategory) &&
            (identical(other.indexSubcategory, indexSubcategory) ||
                other.indexSubcategory == indexSubcategory) &&
            (identical(other.indexType, indexType) ||
                other.indexType == indexType) &&
            (identical(other.errorCategory, errorCategory) ||
                other.errorCategory == errorCategory) &&
            (identical(other.errorSubcategory, errorSubcategory) ||
                other.errorSubcategory == errorSubcategory) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.errorAmount, errorAmount) ||
                other.errorAmount == errorAmount) &&
            (identical(other.errorMerchant, errorMerchant) ||
                other.errorMerchant == errorMerchant) &&
            (identical(other.errorMerchantWebsite, errorMerchantWebsite) ||
                other.errorMerchantWebsite == errorMerchantWebsite) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.focusStatusAmount, focusStatusAmount) ||
                other.focusStatusAmount == focusStatusAmount) &&
            (identical(other.focusStatusMerchant, focusStatusMerchant) ||
                other.focusStatusMerchant == focusStatusMerchant) &&
            (identical(other.focusStatusMerchantWebsite,
                    focusStatusMerchantWebsite) ||
                other.focusStatusMerchantWebsite ==
                    focusStatusMerchantWebsite) &&
            (identical(other.focusStatusDescription, focusStatusDescription) ||
                other.focusStatusDescription == focusStatusDescription) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        amount,
        merchant,
        merchantWebsite,
        description,
        valueDate,
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_subcategories),
        const DeepCollectionEquality().hash(_type),
        indexCategory,
        indexSubcategory,
        indexType,
        errorCategory,
        errorSubcategory,
        errorType,
        errorAmount,
        errorMerchant,
        errorMerchantWebsite,
        errorDescription,
        failure,
        focusStatusAmount,
        focusStatusMerchant,
        focusStatusMerchantWebsite,
        focusStatusDescription,
        isLoading,
        isProcessing,
        isDone
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionStateImplCopyWith<_$AddTransactionStateImpl> get copyWith =>
      __$$AddTransactionStateImplCopyWithImpl<_$AddTransactionStateImpl>(
          this, _$identity);
}

abstract class _AddTransactionState extends AddTransactionState {
  const factory _AddTransactionState(
      {final String amount,
      final String merchant,
      final String merchantWebsite,
      final String description,
      final DateTime? valueDate,
      final List<CategoryEntity> categories,
      final List<SubcategoryEntity> subcategories,
      final List<TypeTransaction> type,
      final int indexCategory,
      final int indexSubcategory,
      final int indexType,
      final bool errorCategory,
      final bool errorSubcategory,
      final bool errorType,
      final AppInputErrorRequired? errorAmount,
      final AppInputErrorRequired? errorMerchant,
      final AppInputErrorRequired? errorMerchantWebsite,
      final AppInputErrorRequired? errorDescription,
      final AppFailure? failure,
      final bool focusStatusAmount,
      final bool focusStatusMerchant,
      final bool focusStatusMerchantWebsite,
      final bool focusStatusDescription,
      final bool isLoading,
      final bool isProcessing,
      final bool isDone}) = _$AddTransactionStateImpl;
  const _AddTransactionState._() : super._();

  @override
  String get amount;
  @override
  String get merchant;
  @override
  String get merchantWebsite;
  @override
  String get description;
  @override
  DateTime? get valueDate;
  @override
  List<CategoryEntity> get categories;
  @override
  List<SubcategoryEntity> get subcategories;
  @override
  List<TypeTransaction> get type;
  @override
  int get indexCategory;
  @override
  int get indexSubcategory;
  @override
  int get indexType;
  @override
  bool get errorCategory;
  @override
  bool get errorSubcategory;
  @override
  bool get errorType;
  @override
  AppInputErrorRequired? get errorAmount;
  @override
  AppInputErrorRequired? get errorMerchant;
  @override
  AppInputErrorRequired? get errorMerchantWebsite;
  @override
  AppInputErrorRequired? get errorDescription;
  @override
  AppFailure? get failure;
  @override
  bool get focusStatusAmount;
  @override
  bool get focusStatusMerchant;
  @override
  bool get focusStatusMerchantWebsite;
  @override
  bool get focusStatusDescription;
  @override
  bool get isLoading;
  @override
  bool get isProcessing;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$AddTransactionStateImplCopyWith<_$AddTransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
