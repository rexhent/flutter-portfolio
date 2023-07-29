from flask import Flask, jsonify
import requests
import random
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/random-capital', methods=['GET'])
def get_random_capital():
    # Use Rest Countries API to get all countries' data
    response = requests.get('https://restcountries.com/v2/all')
    if response.status_code == 200:
        countries_data = response.json()
        # Get a random country from the list
        random_country = random.choice(countries_data)
        # Extract the capital city
        capital = random_country['capital']
        value = "The capital of " + capital
        return jsonify({'capital': capital})
    else:
        return jsonify({'error': 'Failed to fetch data from Rest Countries API'}), 500


@app.route('/get-variable')
def get_variable():
    my_variable = "Hello, Flutter!"
    return my_variable

if __name__ == '__main__':
    app.run(host='192.168.150.112', port=5000)