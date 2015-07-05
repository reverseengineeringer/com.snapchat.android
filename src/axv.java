import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;

public final class axv
  extends TypeAdapter<axu>
{
  private static String a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return paramJsonReader.nextString();
  }
}

/* Location:
 * Qualified Name:     axv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */