import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public final class st
  extends sx<st.b>
{
  final String mExpiration;
  final String mPan;
  private final String mPaymentId;
  final String mPostalCode;
  final String mSecurityCode;
  
  public st(@chd String paramString1, @chc String paramString2, @chc String paramString3, @chc String paramString4, @chc String paramString5, @chc sx.a parama)
  {
    super(parama);
    mPan = paramString2;
    mExpiration = paramString3;
    mSecurityCode = paramString4;
    mPostalCode = paramString5;
    mPaymentId = paramString1;
    registerCallback(st.b.class, this);
  }
  
  public st(@chc String paramString1, @chc String paramString2, @chc String paramString3, @chc String paramString4, @chc sx.a parama)
  {
    this(null, paramString1, paramString2, paramString3, paramString4, parama);
  }
  
  public final String a()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/card";
    }
    return "cash/card";
  }
  
  public final Object getRequestPayload()
  {
    return new st.a();
  }
  
  @un
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
    extends sy
  {
    @SerializedName("card_token")
    @chd
    public String cardToken;
  }
}

/* Location:
 * Qualified Name:     st
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */