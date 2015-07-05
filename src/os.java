import com.snapchat.android.Timber;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class os
{
  private static final String PATTERN = "0001110111101110001111010101111011010001001110011000110001000110";
  private static final String SECRET = "iEk21fuwZApXlz93750dmW22pw389dPwOk";
  private static final String STATIC_TOKEN = "m198sOkJEn37DjqZ32lpRu76xmw288xSQ9";
  private static final String TAG = "RequestAuthorization";
  
  @cgc
  public static String a(String paramString)
  {
    try
    {
      paramString = a(ajx.F(), paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      Timber.a("RequestAuthorization", paramString);
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
  
  public static String a(String paramString1, String paramString2)
  {
    paramString1 = "iEk21fuwZApXlz93750dmW22pw389dPwOk" + paramString1;
    String str = paramString2 + "iEk21fuwZApXlz93750dmW22pw389dPwOk";
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-256");
    localMessageDigest.update(paramString1.getBytes("UTF-8"));
    paramString2 = a(localMessageDigest.digest());
    localMessageDigest.update(str.getBytes("UTF-8"));
    str = a(localMessageDigest.digest());
    paramString1 = "";
    int i = 0;
    if (i < 64)
    {
      int j = "0001110111101110001111010101111011010001001110011000110001000110".charAt(i);
      paramString1 = new StringBuilder().append(paramString1);
      if (j == 48) {}
      for (char c = paramString2.charAt(i);; c = str.charAt(i))
      {
        paramString1 = c;
        i += 1;
        break;
      }
    }
    return paramString1;
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    return String.format("%064x", new Object[] { new BigInteger(1, paramArrayOfByte) });
  }
  
  public static String b(String paramString)
  {
    try
    {
      paramString = a("m198sOkJEn37DjqZ32lpRu76xmw288xSQ9", paramString);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      Timber.a("RequestAuthorization", paramString);
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     os
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */