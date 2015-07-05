package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;

final class JsonReader$1
  extends JsonReaderInternalAccess
{
  public final void promoteNameToValue(JsonReader paramJsonReader)
  {
    if ((paramJsonReader instanceof JsonTreeReader))
    {
      ((JsonTreeReader)paramJsonReader).promoteNameToValue();
      return;
    }
    int j = JsonReader.a(paramJsonReader);
    int i = j;
    if (j == 0) {
      i = JsonReader.b(paramJsonReader);
    }
    if (i == 13)
    {
      JsonReader.a(paramJsonReader, 9);
      return;
    }
    if (i == 12)
    {
      JsonReader.a(paramJsonReader, 8);
      return;
    }
    if (i == 14)
    {
      JsonReader.a(paramJsonReader, 10);
      return;
    }
    throw new IllegalStateException("Expected a name but was " + paramJsonReader.peek() + "  at line " + JsonReader.c(paramJsonReader) + " column " + JsonReader.d(paramJsonReader));
  }
}

/* Location:
 * Qualified Name:     com.google.gson.stream.JsonReader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */