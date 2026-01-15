import  webbrowser
import sys

#Programa que abre directamente canva

def abrir_canva():
    url = "https://www.canva.com/es_es/"
    print(f"Abriendo la aplicación de diseño {url} ....")
    webbrowser.open(url)

if __name__ == "__main__":
    abrir_canva()