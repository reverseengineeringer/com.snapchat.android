import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;

public final class amp
  implements amk
{
  private final Intent a;
  private final ContentValues b;
  private final boolean c;
  
  public amp(Intent paramIntent)
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
      aaq.b(paramContext);
      return;
    }
    aaq.a(paramContext, b);
  }
  
  public final void f() {}
}

/* Location:
 * Qualified Name:     amp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */