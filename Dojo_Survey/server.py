from flask import Flask, render_template, request, redirect, session

app = Flask(__name__)

app.secret_key = "kavic84nses09bc03ncdald"

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.html')


@app.route('/result', methods=['POST'])
def result():
    return render_template('result.html', form=request.form)

app.run(debug = True)
