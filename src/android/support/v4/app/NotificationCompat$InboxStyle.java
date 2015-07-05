package android.support.v4.app;

import java.util.ArrayList;

public final class NotificationCompat$InboxStyle
  extends NotificationCompat.Style
{
  ArrayList<CharSequence> mTexts = new ArrayList();
  
  public NotificationCompat$InboxStyle() {}
  
  private NotificationCompat$InboxStyle(NotificationCompat.Builder paramBuilder)
  {
    setBuilder(paramBuilder);
  }
  
  private InboxStyle setBigContentTitle(CharSequence paramCharSequence)
  {
    mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  private InboxStyle setSummaryText(CharSequence paramCharSequence)
  {
    mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    mSummaryTextSet = true;
    return this;
  }
  
  public final InboxStyle addLine(CharSequence paramCharSequence)
  {
    mTexts.add(NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence));
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.InboxStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */