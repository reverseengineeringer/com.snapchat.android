package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public final class TypeAdapters
{
  public static final TypeAdapter<BigDecimal> BIG_DECIMAL;
  public static final TypeAdapter<BigInteger> BIG_INTEGER;
  public static final TypeAdapter<BitSet> BIT_SET;
  public static final TypeAdapterFactory BIT_SET_FACTORY;
  public static final TypeAdapter<Boolean> BOOLEAN;
  public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING;
  public static final TypeAdapterFactory BOOLEAN_FACTORY;
  public static final TypeAdapter<Number> BYTE;
  public static final TypeAdapterFactory BYTE_FACTORY;
  public static final TypeAdapter<Calendar> CALENDAR;
  public static final TypeAdapterFactory CALENDAR_FACTORY;
  public static final TypeAdapter<Character> CHARACTER;
  public static final TypeAdapterFactory CHARACTER_FACTORY;
  public static final TypeAdapter<Class> CLASS = new TypeAdapter() {};
  public static final TypeAdapterFactory CLASS_FACTORY = newFactory(Class.class, CLASS);
  public static final TypeAdapter<Number> DOUBLE;
  public static final TypeAdapterFactory ENUM_FACTORY = newEnumTypeHierarchyFactory();
  public static final TypeAdapter<Number> FLOAT;
  public static final TypeAdapter<InetAddress> INET_ADDRESS;
  public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
  public static final TypeAdapter<Number> INTEGER;
  public static final TypeAdapterFactory INTEGER_FACTORY;
  public static final TypeAdapter<JsonElement> JSON_ELEMENT;
  public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
  public static final TypeAdapter<Locale> LOCALE;
  public static final TypeAdapterFactory LOCALE_FACTORY;
  public static final TypeAdapter<Number> LONG;
  public static final TypeAdapter<Number> NUMBER;
  public static final TypeAdapterFactory NUMBER_FACTORY;
  public static final TypeAdapter<Number> SHORT;
  public static final TypeAdapterFactory SHORT_FACTORY;
  public static final TypeAdapter<String> STRING;
  public static final TypeAdapter<StringBuffer> STRING_BUFFER;
  public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
  public static final TypeAdapter<StringBuilder> STRING_BUILDER;
  public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
  public static final TypeAdapterFactory STRING_FACTORY;
  public static final TypeAdapterFactory TIMESTAMP_FACTORY;
  public static final TypeAdapter<URI> URI;
  public static final TypeAdapterFactory URI_FACTORY;
  public static final TypeAdapter<URL> URL;
  public static final TypeAdapterFactory URL_FACTORY;
  public static final TypeAdapter<UUID> UUID;
  public static final TypeAdapterFactory UUID_FACTORY;
  
  static
  {
    BIT_SET = new TypeAdapter()
    {
      private static BitSet a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        BitSet localBitSet = new BitSet();
        paramAnonymousJsonReader.beginArray();
        Object localObject = paramAnonymousJsonReader.peek();
        int i = 0;
        if (localObject != JsonToken.END_ARRAY)
        {
          boolean bool;
          switch (TypeAdapters.26.a[localObject.ordinal()])
          {
          default: 
            throw new JsonSyntaxException("Invalid bitset value type: " + localObject);
          case 1: 
            if (paramAnonymousJsonReader.nextInt() != 0) {
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
            localObject = paramAnonymousJsonReader.peek();
            break;
            bool = false;
            continue;
            bool = paramAnonymousJsonReader.nextBoolean();
            continue;
            localObject = paramAnonymousJsonReader.nextString();
            try
            {
              int j = Integer.parseInt((String)localObject);
              if (j != 0) {
                bool = true;
              } else {
                bool = false;
              }
            }
            catch (NumberFormatException paramAnonymousJsonReader)
            {
              throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + (String)localObject);
            }
          }
        }
        paramAnonymousJsonReader.endArray();
        return localBitSet;
      }
    };
    BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
    BOOLEAN = new TypeAdapter() {};
    BOOLEAN_AS_STRING = new TypeAdapter() {};
    BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
    BYTE = new TypeAdapter()
    {
      private static Number a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          byte b = (byte)paramAnonymousJsonReader.nextInt();
          return Byte.valueOf(b);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
    SHORT = new TypeAdapter()
    {
      private static Number a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          short s = (short)paramAnonymousJsonReader.nextInt();
          return Short.valueOf(s);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
    INTEGER = new TypeAdapter()
    {
      private static Number a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          int i = paramAnonymousJsonReader.nextInt();
          return Integer.valueOf(i);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
    LONG = new TypeAdapter()
    {
      private static Number a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          long l = paramAnonymousJsonReader.nextLong();
          return Long.valueOf(l);
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    FLOAT = new TypeAdapter() {};
    DOUBLE = new TypeAdapter() {};
    NUMBER = new TypeAdapter() {};
    NUMBER_FACTORY = newFactory(Number.class, NUMBER);
    CHARACTER = new TypeAdapter() {};
    CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
    STRING = new TypeAdapter() {};
    BIG_DECIMAL = new TypeAdapter()
    {
      private static BigDecimal a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          paramAnonymousJsonReader = new BigDecimal(paramAnonymousJsonReader.nextString());
          return paramAnonymousJsonReader;
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    BIG_INTEGER = new TypeAdapter()
    {
      private static BigInteger a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL)
        {
          paramAnonymousJsonReader.nextNull();
          return null;
        }
        try
        {
          paramAnonymousJsonReader = new BigInteger(paramAnonymousJsonReader.nextString());
          return paramAnonymousJsonReader;
        }
        catch (NumberFormatException paramAnonymousJsonReader)
        {
          throw new JsonSyntaxException(paramAnonymousJsonReader);
        }
      }
    };
    STRING_FACTORY = newFactory(String.class, STRING);
    STRING_BUILDER = new TypeAdapter() {};
    STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
    STRING_BUFFER = new TypeAdapter() {};
    STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
    URL = new TypeAdapter() {};
    URL_FACTORY = newFactory(URL.class, URL);
    URI = new TypeAdapter()
    {
      private static URI a(JsonReader paramAnonymousJsonReader)
      {
        if (paramAnonymousJsonReader.peek() == JsonToken.NULL) {
          paramAnonymousJsonReader.nextNull();
        }
        for (;;)
        {
          return null;
          try
          {
            paramAnonymousJsonReader = paramAnonymousJsonReader.nextString();
            if ("null".equals(paramAnonymousJsonReader)) {
              continue;
            }
            paramAnonymousJsonReader = new URI(paramAnonymousJsonReader);
            return paramAnonymousJsonReader;
          }
          catch (URISyntaxException paramAnonymousJsonReader)
          {
            throw new JsonIOException(paramAnonymousJsonReader);
          }
        }
      }
    };
    URI_FACTORY = newFactory(URI.class, URI);
    INET_ADDRESS = new TypeAdapter() {};
    INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
    UUID = new TypeAdapter() {};
    UUID_FACTORY = newFactory(UUID.class, UUID);
    TIMESTAMP_FACTORY = new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.getRawType() != Timestamp.class) {
          return null;
        }
        new TypeAdapter() {};
      }
    };
    CALENDAR = new TypeAdapter() {};
    CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
    LOCALE = new TypeAdapter() {};
    LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
    JSON_ELEMENT = new TypeAdapter()
    {
      private JsonElement a(JsonReader paramAnonymousJsonReader)
      {
        switch (TypeAdapters.26.a[paramAnonymousJsonReader.peek().ordinal()])
        {
        default: 
          throw new IllegalArgumentException();
        case 3: 
          return new JsonPrimitive(paramAnonymousJsonReader.nextString());
        case 1: 
          return new JsonPrimitive(new LazilyParsedNumber(paramAnonymousJsonReader.nextString()));
        case 2: 
          return new JsonPrimitive(Boolean.valueOf(paramAnonymousJsonReader.nextBoolean()));
        case 4: 
          paramAnonymousJsonReader.nextNull();
          return JsonNull.INSTANCE;
        case 5: 
          localObject = new JsonArray();
          paramAnonymousJsonReader.beginArray();
          while (paramAnonymousJsonReader.hasNext()) {
            ((JsonArray)localObject).add(a(paramAnonymousJsonReader));
          }
          paramAnonymousJsonReader.endArray();
          return (JsonElement)localObject;
        }
        Object localObject = new JsonObject();
        paramAnonymousJsonReader.beginObject();
        while (paramAnonymousJsonReader.hasNext()) {
          ((JsonObject)localObject).add(paramAnonymousJsonReader.nextName(), a(paramAnonymousJsonReader));
        }
        paramAnonymousJsonReader.endObject();
        return (JsonElement)localObject;
      }
      
      private void a(JsonWriter paramAnonymousJsonWriter, JsonElement paramAnonymousJsonElement)
      {
        if ((paramAnonymousJsonElement == null) || (paramAnonymousJsonElement.isJsonNull()))
        {
          paramAnonymousJsonWriter.nullValue();
          return;
        }
        if (paramAnonymousJsonElement.isJsonPrimitive())
        {
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonPrimitive();
          if (paramAnonymousJsonElement.isNumber())
          {
            paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsNumber());
            return;
          }
          if (paramAnonymousJsonElement.isBoolean())
          {
            paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsBoolean());
            return;
          }
          paramAnonymousJsonWriter.value(paramAnonymousJsonElement.getAsString());
          return;
        }
        if (paramAnonymousJsonElement.isJsonArray())
        {
          paramAnonymousJsonWriter.beginArray();
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonArray().iterator();
          while (paramAnonymousJsonElement.hasNext()) {
            a(paramAnonymousJsonWriter, (JsonElement)paramAnonymousJsonElement.next());
          }
          paramAnonymousJsonWriter.endArray();
          return;
        }
        if (paramAnonymousJsonElement.isJsonObject())
        {
          paramAnonymousJsonWriter.beginObject();
          paramAnonymousJsonElement = paramAnonymousJsonElement.getAsJsonObject().entrySet().iterator();
          while (paramAnonymousJsonElement.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)paramAnonymousJsonElement.next();
            paramAnonymousJsonWriter.name((String)localEntry.getKey());
            a(paramAnonymousJsonWriter, (JsonElement)localEntry.getValue());
          }
          paramAnonymousJsonWriter.endObject();
          return;
        }
        throw new IllegalArgumentException("Couldn't write " + paramAnonymousJsonElement.getClass());
      }
    };
    JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);
  }
  
  public static TypeAdapterFactory newEnumTypeHierarchyFactory()
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        paramAnonymousTypeToken = paramAnonymousTypeToken.getRawType();
        if ((!Enum.class.isAssignableFrom(paramAnonymousTypeToken)) || (paramAnonymousTypeToken == Enum.class)) {
          return null;
        }
        paramAnonymousGson = paramAnonymousTypeToken;
        if (!paramAnonymousTypeToken.isEnum()) {
          paramAnonymousGson = paramAnonymousTypeToken.getSuperclass();
        }
        return new TypeAdapters.a(paramAnonymousGson);
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactory(TypeToken<TT> paramTypeToken, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.equals(a)) {
          return paramTypeAdapter;
        }
        return null;
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (paramAnonymousTypeToken.getRawType() == a) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + a.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass1, final Class<TT> paramClass2, final TypeAdapter<? super TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        paramAnonymousGson = paramAnonymousTypeToken.getRawType();
        if ((paramAnonymousGson == a) || (paramAnonymousGson == paramClass2)) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + paramClass2.getName() + "+" + a.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(Class<TT> paramClass, final Class<? extends TT> paramClass1, final TypeAdapter<? super TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        paramAnonymousGson = paramAnonymousTypeToken.getRawType();
        if ((paramAnonymousGson == a) || (paramAnonymousGson == paramClass1)) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[type=" + a.getName() + "+" + paramClass1.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  public static <TT> TypeAdapterFactory newTypeHierarchyFactory(Class<TT> paramClass, final TypeAdapter<TT> paramTypeAdapter)
  {
    new TypeAdapterFactory()
    {
      public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
      {
        if (a.isAssignableFrom(paramAnonymousTypeToken.getRawType())) {
          return paramTypeAdapter;
        }
        return null;
      }
      
      public final String toString()
      {
        return "Factory[typeHierarchy=" + a.getName() + ",adapter=" + paramTypeAdapter + "]";
      }
    };
  }
  
  static final class a<T extends Enum<T>>
    extends TypeAdapter<T>
  {
    private final Map<String, T> a = new HashMap();
    private final Map<T, String> b = new HashMap();
    
    public a(Class<T> paramClass)
    {
      for (;;)
      {
        try
        {
          Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
          int j = arrayOfEnum.length;
          int i = 0;
          if (i < j)
          {
            Enum localEnum = arrayOfEnum[i];
            String str = localEnum.name();
            SerializedName localSerializedName = (SerializedName)paramClass.getField(str).getAnnotation(SerializedName.class);
            if (localSerializedName != null)
            {
              str = localSerializedName.value();
              a.put(str, localEnum);
              b.put(localEnum, str);
              i += 1;
            }
          }
          else
          {
            return;
          }
        }
        catch (NoSuchFieldException paramClass)
        {
          throw new AssertionError();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.TypeAdapters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */