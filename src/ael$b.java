import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import java.util.Map;

final class ael$b
  implements afg.a
{
  private final String b;
  
  ael$b(ael paramael, String paramString)
  {
    b = paramString;
  }
  
  public final void a(ImageView arg1, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean)
  {
    paramDrawable = a;
    paramBundle = b;
    for (;;)
    {
      ael.c localc;
      synchronized (i)
      {
        localc = (ael.c)j.get(paramBundle);
        if (localc == null) {
          return;
        }
        a = true;
        if (e != null) {
          e.a(paramBoolean);
        }
        if (ael.a(localc))
        {
          j.remove(paramBundle);
          return;
        }
      }
      j.put(paramBundle, localc);
    }
  }
}

/* Location:
 * Qualified Name:     ael.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */