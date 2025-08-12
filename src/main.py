import flet

from views.main_window import MainWindow

if __name__ == "__main__":
    flet.app(
        target=MainWindow(),
        assets_dir="assets"
    )