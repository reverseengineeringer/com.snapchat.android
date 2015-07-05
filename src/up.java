import com.google.gson.annotations.SerializedName;
import java.util.List;

public final class up
  extends th
  implements ts.b<up.c>
{
  private static final String PATH = "/loq/conversations";
  private final up.a mCallback;
  final String mIterToken;
  
  public up(String paramString, up.a parama)
  {
    mIterToken = paramString;
    mCallback = parama;
    a(up.c.class, this);
  }
  
  public final Object b()
  {
    return new up.b();
  }
  
  protected final String d()
  {
    return "/loq/conversations";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(List<bhd> paramList);
  }
  
  @tn
  final class b
    extends pl
  {
    @SerializedName("offset")
    String iterToken = mIterToken;
    
    b() {}
  }
  
  public static class c
  {
    @SerializedName("conversations_response")
    List<bhd> conversations;
  }
}

/* Location:
 * Qualified Name:     up
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */