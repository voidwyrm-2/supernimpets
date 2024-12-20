type
  Pet* = object
    id, name: string
    stats: tuple[health, damage: int]
    effect: tuple[kind: string, actions: seq[Action]]

  Action* = object
    kind: string
