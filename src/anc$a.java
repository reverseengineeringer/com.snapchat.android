import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;

@tn
public final class anc$a
  extends pl
{
  @SerializedName("action")
  String a;
  @SerializedName("password")
  String b;
  @SerializedName("phoneNumber")
  String c;
  @SerializedName("code")
  String d;
  @SerializedName("deviceid")
  String e;
  @SerializedName("dtoken1i")
  String f;
  @SerializedName("dsig")
  String g;
  
  public anc$a(anc paramanc, @cgb String paramString1, @cgb String paramString2, @cgc String paramString3)
  {
    a = paramString1;
    if (TextUtils.equals(a, "pwConfirmPhoneNumber"))
    {
      c = paramString2;
      b = paramString3;
    }
    do
    {
      do
      {
        return;
        if (!TextUtils.equals(a, "enableTwoFA")) {
          break;
        }
        d = paramString2;
        b = ajx.l();
        paramanc = c.a(ajx.l(), a(), b());
        if (paramanc != null)
        {
          f = ((String)first);
          g = ((String)second);
          return;
        }
      } while (!ReleaseManager.f());
      throw new RuntimeException("null deviceTokenAndSignaturePair");
    } while (!TextUtils.equals(a, "twoFAForgetOneDevice"));
    e = paramString2;
  }
}

/* Location:
 * Qualified Name:     anc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */