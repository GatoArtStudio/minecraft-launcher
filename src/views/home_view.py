import flet as ft


class HomeView(ft.View):

    def __init__(self):
        super().__init__(
            route = "home",
            appbar = ft.AppBar(
                title = ft.Text(
                    "View Home"
                ),
                bgcolor = ft.Colors.BLACK
            ),
            vertical_alignment = ft.MainAxisAlignment.CENTER,
            horizontal_alignment = ft.CrossAxisAlignment.CENTER
        )