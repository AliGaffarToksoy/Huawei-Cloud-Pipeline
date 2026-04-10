from fastapi import FastAPI
from pydantic import BaseModel
import uvicorn

# API Tanımlaması (Swagger UI otomatik oluşacak)
app = FastAPI(title="Huawei Cloud AI Document Search", version="1.0")


# İstek ve Cevap Modelleri (Kurumsal Standart)
class SearchQuery(BaseModel):
    query: str


class SearchResponse(BaseModel):
    answer: str
    confidence_score: float
    source: list


# Yapay Zekanın Simüle Edilmiş Vektör Veritabanı
KNOWLEDGE_BASE = {
    "cce": "Cloud Container Engine (CCE), Kubernetes kümelerini yönetmenizi sağlayan yüksek performanslı bir servistir.",
    "obs": "Object Storage Service (OBS), büyük miktarda veriyi güvenle depolamanızı sağlayan nesne tabanlı depolama servisidir.",
    "vpc": "Virtual Private Cloud (VPC), izole ve güvenli sanal ağlar kurmanızı sağlar."
}


@app.post("/api/v1/search", response_model=SearchResponse)
def document_search(request: SearchQuery):
    query = request.query.lower()

    # RAG (Retrieval) Simülasyonu: Gelen soruyu bilgi bankasında ara
    for key, context in KNOWLEDGE_BASE.items():
        if key in query:
            return SearchResponse(
                answer=f"Dokümanlardan elde edilen bilgi: {context}",
                confidence_score=0.95,
                source=["huawei_cloud_docs_v1"]
            )

    # Eğer hiçbir şey bulamazsa
    return SearchResponse(
        answer="Üzgünüm, sorunuzla ilgili kurumsal bilgi bankasında bir veri bulamadım.",
        confidence_score=0.10,
        source=[]
    )


# K8s'in pod'un yaşayıp yaşamadığını kontrol edeceği Health Check (Çok Önemli!)
@app.get("/health")
def health_check():
    return {"status": "healthy"}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)