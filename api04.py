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

    }, {
        "id": 4,
        "name": "Edson",
        "description": "Uma coisa",
        "location": "Na Praça"

    }, {
        "id": 5,
        "name": "Beligol",
        "description": "Uma maquina",
        "location": "madrid"

    }, {
        "id": 6,
        "name": "Maria",
        "description": "Bla Bla Bla",
        "location": "Na escola"

    }

]


def get_all():
    # Converte o dicionario 'items' para json e armazena em 'var_json'
    var_json = json.dumps(items, indent=4)
    # Imprime o json.
    print(var_json)


def get_one(id):
    try:
        id = int(id)
        for item in items:
            if item.get("id") == id:
                return json.dumps(item, indent=4)
    except:
        return False
    





def get_data():

    input_id = input("Digite o ID do item: ")
    view = get_one(input_id)

    if view:

        print(view)

    else:

        print("Algo errado não deu certo")
    # get_all()

# get_data()


def new(json_daata):
    # print('new → ', my_json)
    next_id = max(item["id"] for item in items) + 1
    print("max →" , next_id)
    return

my_json = '''
{
        "name": "Gongolo",
        "description": "Um piolho e cobra",
        "location": "No jardim"
    }
'''
new(my_json)


