import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Locale;

public final class ake
  extends akf
{
  private String mDateText;
  
  public ake(ChatFeedItem paramChatFeedItem)
  {
    super(null, paramChatFeedItem);
    if (paramChatFeedItem == null)
    {
      mDateText = SnapchatApplication.b().getString(2131492993);
      mDateText = mDateText.toUpperCase(Locale.getDefault());
      return;
    }
    mDateText = ata.a(paramChatFeedItem.W()).toUpperCase(Locale.getDefault());
  }
  
  public final String b()
  {
    return mDateText;
  }
  
  public final String d()
  {
    return mDateText;
  }
}

/* Location:
 * Qualified Name:     ake
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */