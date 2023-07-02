class Rabbit {
  late String _name;
  late RabbitState _state;
  Rabbit({String name = "", RabbitState state = RabbitState.SLEEP}) {
    this._name = name;
    this._state = state;
  }

  get name => _name;
  get state => _state;

  updpateState(RabbitState state) {
    this._state = state;
  }
}

enum RabbitState { SLEEP, RUN, WALK, EAT }
