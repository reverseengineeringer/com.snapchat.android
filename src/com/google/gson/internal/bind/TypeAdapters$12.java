package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.util.BitSet;

final class TypeAdapters$12
  extends TypeAdapter<BitSet>
{
  private static BitSet a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    BitSet localBitSet = new BitSet();
    paramJsonReader.beginArray();
    Object localObject = paramJsonReader.peek();
    int i = 0;
    if (localObject != JsonToken.END_ARRAY)
    {
      boolean bool;
      switch (TypeAdapters.26.a[localObject.ordinal()])
      {
      default: 
        throw new JsonSyntaxException("Invalid bitset value type: " + localObject);
      case 1: 
        if (paramJsonReader.nextInt() != 0) {
          bool = true;
        }
        break;
      }
      for (;;)
      {
        if (bool) {
          localBitSet.set(i);
        }
        i += 1;
        localObject = paramJsonReader.peek();
        break;
        bool = false;
        continue;
        bool = paramJsonReader.nextBoolean();
        continue;
        localObject = paramJsonReader.nextString();
        try
        {
          int j = Integer.parseInt((String)localObject);
          if (j != 0) {
            bool = true;
          } else {
            bool = false;
          }
        }
        catch (NumberFormatException paramJsonReader)
        {
          throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
        }
      }
    }
    paramJsonReader.endArray();
    return localBitSet;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */