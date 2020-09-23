from app import socketio, app


if __name__ == '__main__':
		socketio.run(app, host='0.0.0.0', port=443, debug=True, use_reloader=True, certfile='ssl/certificate.crt', keyfile='ssl/private.key', ca_certs='ssl/ca_bundle.crt')
