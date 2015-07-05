package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams
{
  public static JsonElement parse(JsonReader paramJsonReader)
  {
    int i = 1;
    try
    {
      paramJsonReader.peek();
      i = 0;
      paramJsonReader = (JsonElement)TypeAdapters.JSON_ELEMENT.read(paramJsonReader);
      return paramJsonReader;
    }
    catch (EOFException paramJsonReader)
    {
      if (i != 0) {
        return JsonNull.INSTANCE;
      }
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (MalformedJsonException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (IOException paramJsonReader)
    {
      throw new JsonIOException(paramJsonReader);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public static void write(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    TypeAdapters.JSON_ELEMENT.write(paramJsonWriter, paramJsonElement);
  }
  
  public static Writer writerForAppendable(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer)) {
      return (Writer)paramAppendable;
    }
    return new a(paramAppendable, (byte)0);
  }
  
  static final class a
    extends Writer
  {
    private final Appendable a;
    private final a b = new a();
    
    private a(Appendable paramAppendable)
    {
      a = paramAppendable;
    }
    
    public final void close() {}
    
    public final void flush() {}
    
    public final void write(int paramInt)
    {
      a.append((char)paramInt);
    }
    
    public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      b.a = paramArrayOfChar;
      a.append(b, paramInt1, paramInt1 + paramInt2);
    }
    
    static final class a
      implements CharSequence
    {
      char[] a;
      
      public final char charAt(int paramInt)
      {
        return a[paramInt];
      }
      
      public final int length()
      {
        return a.length;
      }
      
      public final CharSequence subSequence(int paramInt1, int paramInt2)
      {
        return new String(a, paramInt1, paramInt2 - paramInt1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.Streams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */