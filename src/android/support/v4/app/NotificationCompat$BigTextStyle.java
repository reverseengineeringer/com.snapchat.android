package android.support.v4.app;

public final class NotificationCompat$BigTextStyle
  extends NotificationCompat.Style
{
  CharSequence mBigText;
  
  public NotificationCompat$BigTextStyle() {}
  
  private NotificationCompat$BigTextStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }
  
  private BigTextStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  private BigTextStyle setSummaryText(CharSequence paramCharSequence)
  {
    mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    mSummaryTextSet = true;
    return this;
  }
  
  public final BigTextStyle bigText(CharSequence paramCharSequence)
  {
    mBigText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.BigTextStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */