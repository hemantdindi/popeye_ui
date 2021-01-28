from django.shortcuts import render
import json, subprocess

# Create your views here.


def home(request):
    return render(request, 'main.html')

def refresh(request):
    command = '/app/lib/popeye --save --out json --output-file popeye.json'
    result_json_file = "/tmp/popeye.json"
    try:
        result_json_file = subprocess.check_output(command, shell=True).decode("utf-8").split("\n")[0]
    except:
        print("Error")

    with open(result_json_file) as f:
        popeye_res = json.load(f)

    return render(request, 'popeye.html', {'results': popeye_res})

def main(request):

    result_json_file = "/tmp/popeye.json"

    with open(result_json_file) as f:
        popeye_res = json.load(f)

    return render(request, 'popeye.html', {'results': popeye_res})


