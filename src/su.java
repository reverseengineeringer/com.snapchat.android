import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public final class su
  extends sx<sy>
{
  private final String mPaymentId;
  final String mPhoneNumber;
  final String mSignature;
  
  public su(@chd String paramString1, @chc String paramString2, @chc String paramString3, @chc sx.a parama)
  {
    super(parama);
    mPhoneNumber = paramString2;
    mSignature = paramString3;
    mPaymentId = paramString1;
    registerCallback(sy.class, this);
  }
  
  public su(@chc String paramString1, @chc String paramString2, @chc sx.a parama)
  {
    this(null, paramString1, paramString2, parama);
  }
  
  public final String a()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/phone-number";
    }
    return "cash/phone-number";
  }
  
  public final Object getRequestPayload()
  {
    return new su.a();
  }
  
  @un
  final class a
  {
    @SerializedName("phone_number")
    final String phoneNumber = mPhoneNumber;
    @SerializedName("signature")
    final String signature = mSignature;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     su
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */