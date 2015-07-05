import android.os.Bundle;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;

public final class atq
{
  public static final int MAX_SUCCESSFUL_STATUS_CODE = 299;
  public static final int MIN_SUCCESSFUL_STATUS_CODE = 200;
  public static final int SC_ANDROID_ID_TOKEN_EXPIRED = 499;
  private static final String TAG = "HttpUtils";
  
  public static String a(String paramString, Bundle paramBundle)
  {
    if ((paramBundle == null) || (paramString == null) || (paramBundle.isEmpty())) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + paramBundle.size() * 32);
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      int i;
      if (localStringBuilder.length() == 0)
      {
        localStringBuilder.append(paramString);
        i = paramString.indexOf('?');
        if (i == -1) {
          localStringBuilder.append('?');
        }
      }
      for (;;)
      {
        if (str != null) {
          break label174;
        }
        try
        {
          throw new NullPointerException(String.format("Found null key in %s", new Object[] { paramBundle }));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          Timber.f("HttpUtils", "UTF-8 is not supported.", new Object[0]);
        }
        break;
        if (i != paramString.length() - 1)
        {
          localStringBuilder.append('&');
          continue;
          localStringBuilder.append('&');
        }
      }
      label174:
      if (paramBundle.get(localUnsupportedEncodingException) == null) {
        throw new NullPointerException(String.format("Found null value for key %s", new Object[] { localUnsupportedEncodingException }));
      }
      localStringBuilder.append(localUnsupportedEncodingException).append("=").append(URLEncoder.encode(paramBundle.get(localUnsupportedEncodingException).toString(), "UTF-8"));
    }
    return localStringBuilder.toString();
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt >= 200) && (paramInt <= 299);
  }
}

/* Location:
 * Qualified Name:     atq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */