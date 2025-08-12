import flet as ft

from view_models.main_window_view_model import MainWindowViewModel
from views.home_view import HomeView


class MainWindow(MainWindowViewModel):

    __page: ft.Page = None

    def __init__(self):
        super().__init__()

    def __call__(self, page: ft.Page):
        self.__page = page
        self.__page.title = "Minecraft Launcher"
        self.__page.window.center()
        self.__page.padding = 0
        self.__page.theme_mode = ft.ThemeMode.DARK
        self.__page.theme = ft.Theme(color_scheme_seed=ft.Colors.BLUE_500)
        self.__page.vertical_alignment = ft.MainAxisAlignment.CENTER
        self.__page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

        self.__page.on_route_change = self.on_change_route
        self.__page.go("/home")

    def on_change_route(self, route: ft.RouteChangeEvent):

        views = {
            "/home": HomeView()
        }

        self.__page.views.clear()
        self.__page.views.append(
            views.get(route.route, HomeView())
        )
        self.__page.update()