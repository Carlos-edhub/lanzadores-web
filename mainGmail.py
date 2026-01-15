import  webbrowser
import sys

#programa que abre Gmail directamente

def abrir_gmail():
    url = "https://mail.google.com"
    print(f"Abriendo gmail {url}.....")
    webbrowser.open(url)

if __name__ == "__main__":
    abrir_gmail()
