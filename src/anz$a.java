import android.text.TextUtils;
import android.util.Pair;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ReleaseManager;

@ud
public final class anz$a
  extends qc
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
  
  public anz$a(anz paramanz, @chc String paramString1, @chc String paramString2, @chd String paramString3)
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
        b = akr.l();
        paramanz = c.a(akr.l(), a(), b());
        if (paramanz != null)
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
 * Qualified Name:     anz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */