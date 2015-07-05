import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Patterns;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bwk
{
  private static final Pattern a = Pattern.compile("[0-9a-f]+", 2);
  
  @SuppressLint({"NewApi"})
  public static Boolean a()
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 11) {}
      for (boolean bool = true;; bool = false) {
        return Boolean.valueOf(bool);
      }
      return Boolean.valueOf(false);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError) {}
  }
  
  public static Boolean a(WeakReference<Activity> paramWeakReference)
  {
    paramWeakReference = (Activity)paramWeakReference.get();
    if (paramWeakReference != null)
    {
      paramWeakReference = paramWeakReference.getResources().getConfiguration();
      if (((screenLayout & 0xF) == 3) || ((screenLayout & 0xF) == 4)) {}
      for (boolean bool = true;; bool = false) {
        return Boolean.valueOf(bool);
      }
    }
    return Boolean.valueOf(false);
  }
  
  public static String a(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  @TargetApi(8)
  public static final boolean b(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      if ((TextUtils.isEmpty(paramString)) || (!Patterns.EMAIL_ADDRESS.matcher(paramString).matches())) {}
    }
    while (!TextUtils.isEmpty(paramString))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public static String c(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("App ID must not be null.");
    }
    paramString = paramString.trim();
    Matcher localMatcher = a.matcher(paramString);
    if (paramString.length() != 32) {
      throw new IllegalArgumentException("App ID length must be 32 characters.");
    }
    if (!localMatcher.matches()) {
      throw new IllegalArgumentException("App ID must match regex pattern /[0-9a-f]+/i");
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     bwk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */