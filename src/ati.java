import android.content.Context;
import android.text.TextUtils;

public final class ati
{
  public static String a(Context paramContext, long paramLong, String paramString)
  {
    String str = "";
    if (paramLong > 0L) {
      str = ata.b(paramContext, paramLong);
    }
    if (TextUtils.isEmpty(str))
    {
      if (paramString != null) {
        return paramString;
      }
      return "";
    }
    if (TextUtils.isEmpty(paramString)) {
      return str;
    }
    return atx.a(null, 2131493170, new Object[] { str, paramString });
  }
}

/* Location:
 * Qualified Name:     ati
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */