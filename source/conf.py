import alabaster

html_theme_path = [alabaster.get_path()]
extensions = ['alabaster']
html_theme = 'alabaster'
html_theme_options = {
    'show_powered_by': False,
    'github_button': True,
    'github_banner': True,
    'github_user': 'shichao-an',
    'github_repo': 'shichao',
    'github_button': False,
    'extra_nav_links': {'Blog': 'https://blog.shichao.io'},
    'sidebar_header': '#999',
}
html_sidebars = {
    '**': [
        'about.html',
        'navigation.html',
        'relations.html',
        'searchbox.html',
        'donate.html',
    ]
}
html_static_path = ['_static']
templates_path = ['_templates']
master_doc = 'index'
project = 'Shichao An'
copyright = '2016 Shichao An'
