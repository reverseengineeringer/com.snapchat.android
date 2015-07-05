import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public final class sd
  extends sh<sd.b>
{
  final String mExpiration;
  final String mPan;
  private final String mPaymentId;
  final String mPostalCode;
  final String mSecurityCode;
  
  public sd(@cgc String paramString1, @cgb String paramString2, @cgb String paramString3, @cgb String paramString4, @cgb String paramString5, @cgb sh.a parama)
  {
    super(parama);
    mPan = paramString2;
    mExpiration = paramString3;
    mSecurityCode = paramString4;
    mPostalCode = paramString5;
    mPaymentId = paramString1;
    a(sd.b.class, this);
  }
  
  public sd(@cgb String paramString1, @cgb String paramString2, @cgb String paramString3, @cgb String paramString4, @cgb sh.a parama)
  {
    this(null, paramString1, paramString2, paramString3, paramString4, parama);
  }
  
  public final Object b()
  {
    return new sd.a();
  }
  
  public final String e()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/card";
    }
    return "cash/card";
  }
  
  @tx
  final class a
  {
    @SerializedName("expiration")
    final String expiration = mExpiration;
    @SerializedName("pan")
    final String pan = mPan;
    @SerializedName("postal_code")
    final String postalCode = mPostalCode;
    @SerializedName("security_code")
    final String securityCode = mSecurityCode;
    
    a() {}
  }
  
  public static class b
    extends si
  {
    @SerializedName("card_token")
    @cgc
    public String cardToken;
  }
}

/* Location:
 * Qualified Name:     sd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */