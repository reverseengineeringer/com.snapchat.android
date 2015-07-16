import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.IOException;

public final class bqd
  implements bpt
{
  private final bmz a;
  
  public bqd(Context paramContext)
  {
    this(bqp.b(paramContext));
  }
  
  private bqd(bmz parambmz)
  {
    a = parambmz;
  }
  
  private bqd(File paramFile)
  {
    this(paramFile, bqp.a(paramFile));
  }
  
  private bqd(File paramFile, long paramLong)
  {
    this(localbmz);
    try
    {
      a.a(new bmj(paramFile, paramLong));
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public final bpt.a a(Uri paramUri, int paramInt)
  {
    Object localObject = null;
    if (paramInt != 0) {
      if (!bqb.c(paramInt)) {
        break label116;
      }
    }
    for (localObject = bmk.b;; localObject = ((bmk.a)localObject).c())
    {
      paramUri = new bnb.a().a(paramUri.toString());
      if (localObject != null) {
        paramUri.a((bmk)localObject);
      }
      paramUri = a.a(paramUri.a()).a();
      int i = paramUri.a();
      if (i < 300) {
        break;
      }
      paramUri.c().close();
      throw new bpt.b(i + " " + paramUri.b(), paramInt, i);
      label116:
      localObject = new bmk.a();
      if (!bqb.a(paramInt)) {
        ((bmk.a)localObject).a();
      }
      if (!bqb.b(paramInt)) {
        ((bmk.a)localObject).b();
      }
    }
    if (paramUri.e() != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramUri = paramUri.c();
      return new bpt.a(paramUri.c(), bool, paramUri.a());
    }
  }
  
  public final void a()
  {
    bmj localbmj = a.a();
    if (localbmj != null) {}
    try
    {
      localbmj.a();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */