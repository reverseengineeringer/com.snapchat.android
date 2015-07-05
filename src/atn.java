import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Deprecated
public final class atn
{
  private static final Gson sGson = new GsonBuilder().registerTypeAdapter(axu.class, new axv().nullSafe()).registerTypeAdapter(ayh.class, new ayi()).enableComplexMapKeySerialization().create();
  
  @Deprecated
  public static Gson a()
  {
    return sGson;
  }
}

/* Location:
 * Qualified Name:     atn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */