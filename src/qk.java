import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;

public final class qk
  extends qc<qk.a>
{
  public qk(@cgb qc.a parama)
  {
    super(parama);
    a(qk.a.class, this);
  }
  
  protected final String d()
  {
    return "/cash/generate_signature_for_phone";
  }
  
  public static class a
    extends ScCashResponsePayload
  {
    @SerializedName("phone_number")
    @cgc
    public String phoneNumber;
    @SerializedName("signature")
    @cgc
    public String signature;
  }
}

/* Location:
 * Qualified Name:     qk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */