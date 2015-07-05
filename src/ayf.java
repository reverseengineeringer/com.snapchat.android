import android.util.Base64;
import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.io.Charsets;

public final class ayf
{
  private static final String TAG = "SecureHash";
  
  @cgc
  public static String a(@cgc String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-256");
      localMessageDigest.reset();
      paramString = Base64.encodeToString(localMessageDigest.digest(paramString.getBytes("UTF-8")), 0);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      Timber.a("SecureHash", paramString);
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
  
  @cgc
  public static String b(@cgc String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.reset();
      paramString = Base64.encodeToString(localMessageDigest.digest(paramString.getBytes(Charsets.UTF_8)), 0);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      Timber.a("SecureHash", paramString);
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     ayf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */