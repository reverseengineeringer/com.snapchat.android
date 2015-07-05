package com.google.gson.internal.bind;

import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.net.URI;
import java.net.URISyntaxException;

final class TypeAdapters$11
  extends TypeAdapter<URI>
{
  private static URI a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL) {
      paramJsonReader.nextNull();
    }
    for (;;)
    {
      return null;
      try
      {
        paramJsonReader = paramJsonReader.nextString();
        if ("null".equals(paramJsonReader)) {
          continue;
        }
        paramJsonReader = new URI(paramJsonReader);
        return paramJsonReader;
      }
      catch (URISyntaxException paramJsonReader)
      {
        throw new JsonIOException(paramJsonReader);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */