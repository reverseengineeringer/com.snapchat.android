import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;

public final class awi
  implements awh
{
  @cgb
  private final byte[] mData;
  
  public awi(@cgb byte[] paramArrayOfByte)
  {
    mData = paramArrayOfByte;
  }
  
  public final Bitmap a(BitmapFactory.Options paramOptions)
  {
    return BitmapFactory.decodeByteArray(mData, 0, mData.length, paramOptions);
  }
  
  public final void a(ContentResolver paramContentResolver, Resources paramResources) {}
}

/* Location:
 * Qualified Name:     awi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */