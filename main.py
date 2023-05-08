from flask import Flask, request, send_file
import subprocess
import os

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        file = request.files['file']
        filename = file.filename
        file_ext = os.path.splitext(filename)[-1].lower()
        if file_ext != '.owl':
            print("The file has not the correct extension")
        elif file:
            file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            output_file = filename[:-4] + '.clp'
            output_path = os.path.join(app.config['OUTPUT_FOLDER'], output_file)
            subprocess.run(['rm', file_path])
            subprocess.run(['rm', output_path])
            
            file.save(file_path)
            # print(file_path)
            # print(output_path)
            subprocess.run(['python3', 'owl2clips.py', '--format', 'turtle', '--input', file_path])
            
            subprocess.run(['mv', file_path, output_path])
        
            return send_file(output_file, as_attachment=True)
    return '''
    <h1>Owl2Clips App</h1>
    <form method="post" enctype="multipart/form-data">
      <input type="file" name="file">
      <input type="submit" value="Upload">
    </form>
    '''

if __name__ == '__main__':
    app.config['UPLOAD_FOLDER'] = 'uploads'
    app.config['OUTPUT_FOLDER'] = 'output'
    
    if not os.path.exists('uploads'):
        os.makedirs('uploads')
    if not os.path.exists('output'):
        os.makedirs('output')
    # subprocess.run(['pip', 'install', '-e', "./owl2else"])
    app.run(host="127.0.0.1", port=8080, debug=True)
