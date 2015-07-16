import com.google.gson.reflect.TypeToken;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class avz
{
  public static String a(Collection<?> paramCollection, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localStringBuilder.append(paramCollection.next());
      if (!paramCollection.hasNext()) {
        break;
      }
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }
  
  @chd
  public static String a(@chd byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte == null)
    {
      localObject = null;
      return (String)localObject;
    }
    String str = "";
    int i = 0;
    for (;;)
    {
      localObject = str;
      if (i >= paramArrayOfByte.length) {
        break;
      }
      str = str + Integer.toString((paramArrayOfByte[i] & 0xFF) + 256, 16).substring(1);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     avz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */