

from fastapi import FastAPI
import uvicorn


app = FastAPI()


@app.get("/testMsg")
def testMsg():
    return "Heavy Metal"


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
