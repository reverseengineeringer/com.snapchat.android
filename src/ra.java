import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;

public final class ra
  extends qs<ra.a>
{
  public ra(@chc qs.a parama)
  {
    super(parama);
    registerCallback(ra.a.class, this);
  }
  
  protected final String getPath()
  {
    return "/cash/generate_signature_for_phone";
  }
  
  public static class a
    extends ScCashResponsePayload
  {
    @SerializedName("phone_number")
    @chd
    public String phoneNumber;
    @SerializedName("signature")
    @chd
    public String signature;
  }
}

/* Location:
 * Qualified Name:     ra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */