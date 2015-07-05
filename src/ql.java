import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;

public final class ql
  extends qc<ql.a>
{
  public ql(@cgb qc.a parama)
  {
    super(parama);
    a(ql.a.class, this);
  }
  
  protected final String d()
  {
    return "/cash/generate_access_token";
  }
  
  public static class a
    extends ScCashResponsePayload
  {
    @SerializedName("access_token")
    @cgc
    public xq accessToken;
  }
}

/* Location:
 * Qualified Name:     ql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */