from fastapi import FastAPI

app = FastAPI()


@app.get("/page")
async def root():
    return {"message": "Hello World"}