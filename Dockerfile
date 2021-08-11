FROM python:3.8.10

# workdir : work direction, đường dẫn để docker làm trên đó.
WORKDIR /home/khoa/test_docker    

# copy là copy file requirement là file install các package 
COPY ./requirements.txt .

# dòng này là để chạy install các package 
RUN  pip3 install -r requirements.txt


# copy thì sẽ có 2 biến đó là: src and tgt , src là nơi ta đang đứng tạo file docker và tgt là nơi docker file thực thi 
COPY . .

# cmd này là run thì theo mình hiểu nó sẽ là : python3 hello.py (thế thôi :))
CMD ["python" , "./hello.py"]

