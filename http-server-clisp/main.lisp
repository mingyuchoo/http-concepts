(ql:quickload "usocket")

(defun create-server ()
  (let* ((socket (usocket:socket-listen "127.0.0.1" 8080))
         (connection (usocket:socket-accept socket :element-type 'character)))
    (unwind-protect
        (progn
          (format (usocket:socket-stream connection) "HTTP/1.1 200 OK\r\nContent-Length:0\r\n\r\n~%")
          (force-output (usocket:socket-stream connection)))
      (progn
        (format t "Closing sockets~%")
        (usocket:socket-close connection)
        (usocket:socket-close socket)))))

