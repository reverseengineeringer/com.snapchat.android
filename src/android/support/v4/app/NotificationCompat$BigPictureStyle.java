package android.support.v4.app;

import android.graphics.Bitmap;

public final class NotificationCompat$BigPictureStyle
  extends NotificationCompat.Style
{
  Bitmap mBigLargeIcon;
  boolean mBigLargeIconSet;
  Bitmap mPicture;
  
  public NotificationCompat$BigPictureStyle() {}
  
  private NotificationCompat$BigPictureStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }
  
  private BigPictureStyle bigLargeIcon(Bitmap paramBitmap)
  {
    mBigLargeIcon = paramBitmap;
    mBigLargeIconSet = true;
    return this;
  }
  
  private BigPictureStyle bigPicture(Bitmap paramBitmap)
  {
    mPicture = paramBitmap;
    return this;
  }
  
  private BigPictureStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  private BigPictureStyle setSummaryText(CharSequence paramCharSequence)
  {
    mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    mSummaryTextSet = true;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.BigPictureStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */