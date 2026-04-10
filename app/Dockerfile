# Hafif ve güvenli bir Python imajı kullanıyoruz
FROM python:3.11-slim

# Konteyner içindeki çalışma dizinimiz
WORKDIR /app

# Önce sadece bağımlılıkları kopyala (Cache optimizasyonu için)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Şimdi asıl kodumuzu kopyala
COPY . .

# Uygulamanın çalışacağı portu dışa aç
EXPOSE 8000

# Kodu ayağa kaldıran komut
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]