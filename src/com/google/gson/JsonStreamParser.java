package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser
  implements Iterator<JsonElement>
{
  private final JsonReader a;
  private final Object b;
  
  public JsonStreamParser(Reader paramReader)
  {
    a = new JsonReader(paramReader);
    a.setLenient(true);
    b = new Object();
  }
  
  public JsonStreamParser(String paramString)
  {
    this(new StringReader(paramString));
  }
  
  public final boolean hasNext()
  {
    for (;;)
    {
      try
      {
        synchronized (b)
        {
          try
          {
            JsonToken localJsonToken1 = a.peek();
            JsonToken localJsonToken2 = JsonToken.END_DOCUMENT;
            if (localJsonToken1 != localJsonToken2)
            {
              bool = true;
              return bool;
            }
          }
          catch (MalformedJsonException localMalformedJsonException)
          {
            throw new JsonSyntaxException(localMalformedJsonException);
          }
        }
        boolean bool = false;
      }
      catch (IOException localIOException)
      {
        throw new JsonIOException(localIOException);
      }
    }
  }
  
  public final JsonElement next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    try
    {
      JsonElement localJsonElement = Streams.parse(a);
      return localJsonElement;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localStackOverflowError);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localOutOfMemoryError);
    }
    catch (JsonParseException localJsonParseException)
    {
      Object localObject = localJsonParseException;
      if ((localJsonParseException.getCause() instanceof EOFException)) {
        localObject = new NoSuchElementException();
      }
      throw ((Throwable)localObject);
    }
  }
  
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.JsonStreamParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */