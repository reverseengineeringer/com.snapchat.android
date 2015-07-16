import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Locale;

public final class akz
  extends ala
{
  private String mDateText;
  
  public akz(ChatFeedItem paramChatFeedItem)
  {
    super(null, paramChatFeedItem);
    if (paramChatFeedItem == null)
    {
      mDateText = SnapchatApplication.b().getString(2131492993).toUpperCase(Locale.getDefault());
      return;
    }
    mDateText = atz.a(paramChatFeedItem.U()).toUpperCase(Locale.getDefault());
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
 * Qualified Name:     akz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */