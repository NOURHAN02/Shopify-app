abstract class ProductStates {}

class InitialState extends ProductStates {}

class AddInfoState extends ProductStates {}

class AddOptionState extends ProductStates {}

class RemoveOptionState extends ProductStates {}

class SaveOptionState extends ProductStates {}
class UnSaveOptionState extends ProductStates {}

class LoadingAddProduct extends ProductStates {}

class SuccessAddProduct extends ProductStates {}

class FailureAddProduct extends ProductStates {}
