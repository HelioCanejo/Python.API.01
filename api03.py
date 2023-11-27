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

def get_all():
    # Converte o dicionario 'items' para json e armazena em 'var_json'
    var_json = json.dumps(items, indent=4)
    # Imprime o json.
    print(var_json)



def get_one(id):
    
    for item in items:
        if item.get("id") == id:
            return json.dumps(item, indent=4)


print(get_one(1))
# get_all()
