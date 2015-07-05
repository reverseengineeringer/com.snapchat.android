package com.google.gson.stream;

public enum JsonToken
{
  static
  {
    BEGIN_OBJECT = new JsonToken("BEGIN_OBJECT", 2);
    END_OBJECT = new JsonToken("END_OBJECT", 3);
    NAME = new JsonToken("NAME", 4);
    STRING = new JsonToken("STRING", 5);
    NUMBER = new JsonToken("NUMBER", 6);
    BOOLEAN = new JsonToken("BOOLEAN", 7);
    NULL = new JsonToken("NULL", 8);
  }
  
  private JsonToken() {}
}

/* Location:
 * Qualified Name:     com.google.gson.stream.JsonToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */