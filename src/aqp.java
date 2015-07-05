import android.content.ContentResolver;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;

public final class aqp
  extends bpi
{
  private final ContentResolver a;
  
  public aqp(@cgb ContentResolver paramContentResolver)
  {
    a = ((ContentResolver)ck.a(paramContentResolver));
  }
  
  public final boolean a(bpg parambpg)
  {
    return ("content".equals(d.getScheme())) && ("media".equals(d.getAuthority()));
  }
  
  public final bpi.a b(bpg parambpg)
  {
    long l = Long.parseLong(d.getLastPathSegment());
    return new bpi.a(MediaStore.Images.Thumbnails.getThumbnail(a, l, 1, null), bpd.d.b);
  }
}

/* Location:
 * Qualified Name:     aqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */