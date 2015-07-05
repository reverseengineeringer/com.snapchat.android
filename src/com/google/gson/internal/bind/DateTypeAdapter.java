package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class DateTypeAdapter
  extends TypeAdapter<Date>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public final <T> TypeAdapter<T> create(Gson paramAnonymousGson, TypeToken<T> paramAnonymousTypeToken)
    {
      if (paramAnonymousTypeToken.getRawType() == Date.class) {
        return new DateTypeAdapter();
      }
      return null;
    }
  };
  private final DateFormat a = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat b = DateFormat.getDateTimeInstance(2, 2);
  private final DateFormat c;
  
  public DateTypeAdapter()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    c = localSimpleDateFormat;
  }
  
  private Date a(String paramString)
  {
    try
    {
      Date localDate1 = b.parse(paramString);
      paramString = localDate1;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = a.parse(paramString);
        paramString = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate3 = c.parse(paramString);
          paramString = localDate3;
        }
        catch (ParseException localParseException3)
        {
          throw new JsonSyntaxException(paramString, localParseException3);
        }
      }
    }
    finally {}
    return paramString;
  }
  
  public final Date read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return a(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, Date paramDate)
  {
    if (paramDate == null) {}
    for (;;)
    {
      try
      {
        paramJsonWriter.nullValue();
        return;
      }
      finally {}
      paramJsonWriter.value(a.format(paramDate));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.bind.DateTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */