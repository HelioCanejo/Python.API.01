import json

items = [
    {
        "id": 1,
        "name": "Bagulho",
        "description": "Apenas um bagulho",
        "location": "Em uma caixa"
    }, {
        "id": 2,
        "name": "Tranqueira",
        "description": "Apenas uma tranqueira qualquer",
        "location": "Em um gaveteiro"
    }, {
        "id": 3,
        "name": "Bagulhete",
        "description": "Uma bagulhete qualquer",
        "location": "Na esquina"

    }

]

# def get_all():
    # var_json = json.dumps(items, indent=4)
    # print(var_json)



def get_one(id):
    var_json = json.dumps(items[id], indent=2)
    print(var_json)


get_one(1)
# get_all()
