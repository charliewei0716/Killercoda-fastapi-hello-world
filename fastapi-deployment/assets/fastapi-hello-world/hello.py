from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

@router.get("/")
def hello_world():
    return {"message": "Hello World"}

@router.get("/hello/{name}")
def hello_world_name(name: str):
    return {"message": f"Hello {name}"}

@router.get("/hello/")
def hello_world_name_query(name: str):
    return {"message": f"Hello {name}"}


class People(BaseModel):
    name: str

@router.post("/hello_post/")
def hello_world_name_post(people: People):
    return {"message": f"Hello {people.name}"}
