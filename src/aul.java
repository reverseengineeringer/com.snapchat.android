import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Deprecated
public final class aul
{
  private static final Gson sGson = new GsonBuilder().registerTypeAdapter(ays.class, new ayt().nullSafe()).registerTypeAdapter(azf.class, new azg()).enableComplexMapKeySerialization().create();
  
  @Deprecated
  public static Gson a()
  {
    return sGson;
  }
}

/* Location:
 * Qualified Name:     aul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */