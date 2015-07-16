import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.io.Charsets;

public final class azd
{
  private static final String TAG = "SecureHash";
  
  @chd
  public static String a(@chd String paramString)
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
      return null;
    }
    catch (UnsupportedEncodingException paramString) {}
    return null;
  }
  
  @chd
  public static String b(@chd String paramString)
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
      return null;
    }
    catch (UnsupportedEncodingException paramString) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     azd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */