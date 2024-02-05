FROM node:latest

COPY frontend frontend
COPY backend backend
COPY shared frontend/src/shared
COPY shared backend/src/shared
COPY .env frontend/.env

RUN npm install --prefix frontend
RUN npm install --prefix backend

RUN npm run build --prefix frontend
RUN npm run build --prefix backend

CMD npm run start:prod --prefix backend
