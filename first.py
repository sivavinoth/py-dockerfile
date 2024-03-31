from fastapi import FastAPI

app = FastAPI()

print("hi")
@app.get("/page")
async def root():
    return {"message": "Hello World"}