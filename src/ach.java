import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import javax.inject.Inject;

public final class ach
{
  @chd
  public static String a(@chd Intent paramIntent)
  {
    if (paramIntent == null) {}
    do
    {
      do
      {
        do
        {
          return null;
          paramIntent = paramIntent.getData();
        } while (paramIntent == null);
        paramIntent = paramIntent.getPath();
      } while ((paramIntent == null) || (!paramIntent.matches("/add/.+")));
      paramIntent = paramIntent.substring(5);
    } while ((TextUtils.isEmpty(paramIntent)) || (paramIntent.length() > 32));
    return paramIntent;
  }
}

/* Location:
 * Qualified Name:     ach
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */