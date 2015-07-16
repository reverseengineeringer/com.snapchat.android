import android.util.Base64;
import java.security.SecureRandom;

public final class azb
{
  public static String a()
  {
    SecureRandom localSecureRandom = new SecureRandom();
    byte[] arrayOfByte = new byte[32];
    localSecureRandom.nextBytes(arrayOfByte);
    return Base64.encodeToString(arrayOfByte, 0);
  }
  
  public static String b()
  {
    SecureRandom localSecureRandom = new SecureRandom();
    byte[] arrayOfByte = new byte[16];
    localSecureRandom.nextBytes(arrayOfByte);
    return Base64.encodeToString(arrayOfByte, 0);
  }
}

/* Location:
 * Qualified Name:     azb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */