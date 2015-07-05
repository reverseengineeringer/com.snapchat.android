import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public final class se
  extends sh<si>
{
  private final String mPaymentId;
  final String mPhoneNumber;
  final String mSignature;
  
  public se(@cgc String paramString1, @cgb String paramString2, @cgb String paramString3, @cgb sh.a parama)
  {
    super(parama);
    mPhoneNumber = paramString2;
    mSignature = paramString3;
    mPaymentId = paramString1;
    a(si.class, this);
  }
  
  public se(@cgb String paramString1, @cgb String paramString2, @cgb sh.a parama)
  {
    this(null, paramString1, paramString2, parama);
  }
  
  public final Object b()
  {
    return new se.a();
  }
  
  public final String e()
  {
    if (!TextUtils.isEmpty(mPaymentId)) {
      return "cash/payments/" + mPaymentId + "/phone-number";
    }
    return "cash/phone-number";
  }
  
  @tx
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
 * Qualified Name:     se
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */