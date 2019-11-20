FROM 200.0.1.100:5000/node
WORKDIR /code
COPY . .
npm install
EXPOSE 4000
CMD node server.js