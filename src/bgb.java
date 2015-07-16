import android.content.Context;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public final class bgb
{
  public static String a(Context paramContext, int paramInt)
  {
    paramContext = new BufferedReader(new InputStreamReader(paramContext.getResources().openRawResource(paramInt)));
    localStringBuilder = new StringBuilder();
    try
    {
      for (;;)
      {
        String str = paramContext.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
        localStringBuilder.append('\n');
      }
      return localStringBuilder.toString();
    }
    catch (IOException paramContext)
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     bgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */