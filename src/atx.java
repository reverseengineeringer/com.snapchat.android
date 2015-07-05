import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.ErrorMetric;
import java.util.Locale;
import java.util.UnknownFormatConversionException;

public final class atx
{
  public static String a(int paramInt, Object... paramVarArgs)
  {
    return a(null, paramInt, paramVarArgs);
  }
  
  @Deprecated
  public static String a(@cgc Context paramContext, int paramInt, Object... paramVarArgs)
  {
    Object localObject = paramContext;
    if (paramContext == null) {
      localObject = SnapchatApplication.b();
    }
    try
    {
      paramContext = ((Context)localObject).getString(paramInt, paramVarArgs);
      return paramContext;
    }
    catch (UnknownFormatConversionException paramContext)
    {
      ErrorMetric localErrorMetric = new ErrorMetric("Invalid string resource");
      localErrorMetric.a(paramContext);
      localErrorMetric.a("string", a((Context)localObject, paramInt, new Object[0]));
      localErrorMetric.a("displayLanguage", Locale.getDefault().getDisplayLanguage());
      localErrorMetric.a("arguments", atn.a().toJson(paramVarArgs));
      localErrorMetric.d();
    }
    return "error :(";
  }
  
  public static boolean a()
  {
    return TextUtils.equals(Locale.getDefault().getCountry(), Locale.US.getCountry());
  }
}

/* Location:
 * Qualified Name:     atx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */