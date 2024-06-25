(defun xor-encrypt (message key)
  "XOR 암호화 함수"
  (let ((encrypted-message ""))
    (dotimes (i (length message))
      (let ((original-char (char message i)))
        (setf encrypted-message (concatenate 'string encrypted-message
                                             (string (logxor (char-code original-char) key))))))
    encrypted-message))

(defun main ()
  "메인 함수"
  (format t "암호화할 메시지를 입력하세요: ")
  (let ((input (read-line)))
    (format t "사용할 XOR 키를 입력하세요: ")
    (let ((key (parse-integer (read-line))))
      (let ((encrypted-message (xor-encrypt input key)))
        (format t "암호화된 메시지: ~a~%" encrypted-message)))))

;; main 함수 실행
(main)
