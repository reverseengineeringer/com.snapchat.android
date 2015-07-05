import android.content.Context;
import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class bow
  implements bom
{
  final LinkedHashMap<String, Bitmap> b;
  private final int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public bow(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Max size must be positive.");
    }
    c = paramInt;
    b = new LinkedHashMap(0, 0.75F, true);
  }
  
  public bow(Context paramContext)
  {
    this(bpo.c(paramContext));
  }
  
  private void a(int paramInt)
  {
    try
    {
      if ((d < 0) || ((b.isEmpty()) && (d != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((d <= paramInt) || (b.isEmpty())) {
        return;
      }
      Object localObject2 = (Map.Entry)b.entrySet().iterator().next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (Bitmap)((Map.Entry)localObject2).getValue();
      b.remove(str);
      d -= bpo.a((Bitmap)localObject2);
      f += 1;
    }
  }
  
  public final int a()
  {
    try
    {
      int i = d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Bitmap a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      paramString = (Bitmap)b.get(paramString);
      if (paramString != null)
      {
        g += 1;
        return paramString;
      }
      h += 1;
      return null;
    }
    finally {}
  }
  
  public final void a(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramBitmap == null)) {
      throw new NullPointerException("key == null || bitmap == null");
    }
    try
    {
      e += 1;
      d += bpo.a(paramBitmap);
      paramString = (Bitmap)b.put(paramString, paramBitmap);
      if (paramString != null) {
        d -= bpo.a(paramString);
      }
      a(c);
      return;
    }
    finally {}
  }
  
  public final int b()
  {
    try
    {
      int i = c;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void c()
  {
    try
    {
      a(-1);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     bow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */