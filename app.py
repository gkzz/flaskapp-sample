from flask import Flask, render_template, request, redirect, url_for

import random

h2 = "Seat Table"
member = [
    'alice',
    'bob',
    'charlie',
    'david',
    'eve',
    'flank',
    'grace',
    'heidi',
    'ivan',
    'judy',
    'Michael',
    'Niaj',
    'Olivia',
    'Peggy',
    'Rupert',
    'Sybil',
]

app = Flask(__name__)

def set_contents(array):
    keys = []
    values = []
    if array is None:
        raise Error(
            "array({array} is unexpected.)".format(
                array=array
            )
        )
    else:
        array = random.sample(array, len(array))
        for k, v in enumerate(array, 1):
            keys.append(k)
            values.append(v)

    return keys, values




@app.route("/post", methods=['GET', 'POST'])
def post():
    keys, values = set_contents(member)
    if request.method == 'POST':
        # Get Name from Requestform
        return render_template(
            "index.html",
            h2 = h2,
            contents = zip(keys, values)
        )
    else: 
        raise ValueError(   
            "request.method({methods}) is unexpected.".format(
                methods=request.method
            )
        )

@app.route("/")
@app.route("/index" )
def index():
    keys, values = set_contents(member)
    return render_template(
        "index.html",
        h2 = h2,
        contents = zip(keys, values)
    )

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
