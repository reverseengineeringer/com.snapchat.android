import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.IOException;

public final class bpc
  implements bos
{
  private final bly a;
  
  public bpc(Context paramContext)
  {
    this(bpo.b(paramContext));
  }
  
  private bpc(bly parambly)
  {
    a = parambly;
  }
  
  private bpc(File paramFile)
  {
    this(paramFile, bpo.a(paramFile));
  }
  
  private bpc(File paramFile, long paramLong)
  {
    this(localbly);
    try
    {
      a.a(new bli(paramFile, paramLong));
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public final bos.a a(Uri paramUri, int paramInt)
  {
    Object localObject = null;
    if (paramInt != 0) {
      if (!bpa.c(paramInt)) {
        break label116;
      }
    }
    for (localObject = blj.b;; localObject = ((blj.a)localObject).c())
    {
      paramUri = new bma.a().a(paramUri.toString());
      if (localObject != null) {
        paramUri.a((blj)localObject);
      }
      paramUri = a.a(paramUri.a()).a();
      int i = paramUri.a();
      if (i < 300) {
        break;
      }
      paramUri.c().close();
      throw new bos.b(i + " " + paramUri.b(), paramInt, i);
      label116:
      localObject = new blj.a();
      if (!bpa.a(paramInt)) {
        ((blj.a)localObject).a();
      }
      if (!bpa.b(paramInt)) {
        ((blj.a)localObject).b();
      }
    }
    if (paramUri.e() != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramUri = paramUri.c();
      return new bos.a(paramUri.c(), bool, paramUri.a());
    }
  }
  
  public final void a()
  {
    bli localbli = a.a();
    if (localbli != null) {}
    try
    {
      localbli.a();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     bpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */