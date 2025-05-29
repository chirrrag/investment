import random
from flask import Flask, jsonify


app = Flask(__name__)

portfolio = ['Investments', 'Smallcase', 'Stocks', 'buy-the-dip', 'TickerTape']

# print(portfolio)
@app.route('/api/v1', methods=['GET'])
def get_random_portfolio():
    return random.choice(portfolio)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8081)
