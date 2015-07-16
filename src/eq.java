import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class eq
  implements JsonDeserializer<Date>, JsonSerializer<Date>
{
  private final DateFormat a;
  private final DateFormat b;
  private final DateFormat c;
  
  eq()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }
  
  public eq(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }
  
  public eq(String paramString)
  {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }
  
  private eq(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    a = paramDateFormat1;
    b = paramDateFormat2;
    c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    c.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  private JsonElement a(Date paramDate)
  {
    synchronized (b)
    {
      paramDate = new JsonPrimitive(a.format(paramDate));
      return paramDate;
    }
  }
  
  private Date a(JsonElement paramJsonElement)
  {
    Date localDate2;
    synchronized (b)
    {
      try
      {
        Date localDate1 = b.parse(paramJsonElement.getAsString());
        return localDate1;
      }
      catch (ParseException localParseException1) {}
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(eq.class.getSimpleName());
    localStringBuilder.append('(').append(b.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */