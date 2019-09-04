from wsgiref.simple_server import make_server

def app(environ, start_response):
    headers = [('Content-type', 'text/plain; charset=utf-8')]
    start_response("200 OK", headers)
    return [
        "hello world! カタツムリ".encode("utf-8"),
        ]

with make_server('', 8000, app) as httpd:
    print("Serving on port 8000...")
    httpd.serve_forever()