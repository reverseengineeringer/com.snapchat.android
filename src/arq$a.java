import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import java.io.File;

public final class arq$a
{
  final long a;
  public final Uri b;
  @r
  public File c;
  private final String e;
  
  public arq$a(arq paramarq, long paramLong, @chc String paramString)
  {
    a = paramLong;
    e = ((String)co.a(paramString));
    b = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, String.valueOf(paramLong));
  }
}

/* Location:
 * Qualified Name:     arq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */