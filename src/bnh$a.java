import java.io.File;
import java.io.FileNotFoundException;

public final class bnh$a
{
  final bnh.b a;
  final boolean[] b;
  boolean c;
  private boolean e;
  
  private bnh$a(bnh parambnh, bnh.b paramb)
  {
    a = paramb;
    if (e) {}
    for (parambnh = null;; parambnh = new boolean[bnh.h(parambnh)])
    {
      b = parambnh;
      return;
    }
  }
  
  public final cbj a(int paramInt)
  {
    synchronized (d)
    {
      if (a.f != this) {
        throw new IllegalStateException();
      }
    }
    if (!a.e) {
      b[paramInt] = true;
    }
    Object localObject2 = a.d[paramInt];
    try
    {
      localObject2 = bnh.i(d).b((File)localObject2);
      localObject2 = new bni((cbj)localObject2)
      {
        protected final void a()
        {
          synchronized (d)
          {
            c = true;
            return;
          }
        }
      };
      return (cbj)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      cbj localcbj = bnh.a();
      return localcbj;
    }
  }
  
  public final void a()
  {
    synchronized (d)
    {
      if (c)
      {
        bnh.a(d, this, false);
        bnh.a(d, a);
        e = true;
        return;
      }
      bnh.a(d, this, true);
    }
  }
  
  public final void b()
  {
    synchronized (d)
    {
      bnh.a(d, this, false);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bnh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */