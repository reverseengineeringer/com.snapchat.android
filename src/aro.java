import android.content.ContentResolver;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;

public final class aro
  extends bqj
{
  private final ContentResolver a;
  
  public aro(@chc ContentResolver paramContentResolver)
  {
    a = ((ContentResolver)co.a(paramContentResolver));
  }
  
  public final boolean a(bqh parambqh)
  {
    return ("content".equals(d.getScheme())) && ("media".equals(d.getAuthority()));
  }
  
  public final bqj.a b(bqh parambqh)
  {
    long l = Long.parseLong(d.getLastPathSegment());
    return new bqj.a(MediaStore.Images.Thumbnails.getThumbnail(a, l, 1, null), bqe.d.b);
  }
}

/* Location:
 * Qualified Name:     aro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */