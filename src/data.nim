import parsetoml, os, strutils, pets, tables

proc loadPet(file: string): tuple[id: string, pet: Pet] = ("", Pet())

proc loadPets*(pets: Table[string, Pet]) =
  for kind, path in walkDir("pets", true):
    case kind:
    of pcFile:
      if path.endsWith(".toml"):
        let res = loadPet("pets/" & path)
        pets[res.id] = res.pet
    else:
      discard
