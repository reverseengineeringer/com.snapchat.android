import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;

public final class rb
  extends qs<rb.a>
{
  public rb(@chc qs.a parama)
  {
    super(parama);
    registerCallback(rb.a.class, this);
  }
  
  protected final String getPath()
  {
    return "/cash/generate_access_token";
  }
  
  public static class a
    extends ScCashResponsePayload
  {
    @SerializedName("access_token")
    @chd
    public ym accessToken;
  }
}

/* Location:
 * Qualified Name:     rb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */