import com.google.gson.annotations.SerializedName;
import java.util.List;

public final class vh
  extends tx
  implements ui.b<vh.c>
{
  private static final String PATH = "/loq/conversations";
  private final vh.a mCallback;
  final String mIterToken;
  
  public vh(String paramString, vh.a parama)
  {
    mIterToken = paramString;
    mCallback = parama;
    registerCallback(vh.c.class, this);
  }
  
  protected final String getPath()
  {
    return "/loq/conversations";
  }
  
  public final Object getRequestPayload()
  {
    return new vh.b();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(List<bid> paramList);
  }
  
  @ud
  final class b
    extends qc
  {
    @SerializedName("offset")
    String iterToken = mIterToken;
    
    b() {}
  }
  
  public static class c
  {
    @SerializedName("conversations_response")
    List<bid> conversations;
  }
}

/* Location:
 * Qualified Name:     vh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */