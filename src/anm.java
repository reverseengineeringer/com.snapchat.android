import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;

public final class anm
  implements anh
{
  private final Intent a;
  private final ContentValues b;
  private final boolean c;
  
  public anm(Intent paramIntent)
  {
    a = paramIntent;
    b = ((ContentValues)a.getParcelableExtra("content_values"));
    c = a.getBooleanExtra("clear", false);
  }
  
  public final Intent a()
  {
    return a;
  }
  
  public final void a(Context paramContext)
  {
    if (c)
    {
      abp.b(paramContext);
      return;
    }
    abp.a(paramContext, b);
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     anm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */