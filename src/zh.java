import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.squareup.otto.Bus;

public final class zh
{
  private final Context a;
  private final zm b;
  
  public zh(Context paramContext)
  {
    this(paramContext, zm.a());
  }
  
  @cf
  private zh(Context paramContext, zm paramzm)
  {
    a = paramContext;
    b = paramzm;
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc alj paramalj, @chd String paramString)
  {
    if (!paramalj.e()) {
      throw new IllegalStateException("The provided chatFeedItem cannot be saved/unsaved. Please check canSaveOrUnsave before calling this method.");
    }
    int i = a.getResources().getColor(2131230727);
    int j = a.getResources().getColor(2131230813);
    String str2;
    int k;
    String str1;
    if (paramalj.g())
    {
      str2 = a.getResources().getString(2131493009);
      k = paramalj.n();
      str1 = str2;
      if ((paramalj instanceof akw))
      {
        b.a(paramChatConversation, (akw)paramalj, k, false);
        str1 = str2;
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramChatConversation = new bcg(str1, i, j, paramString);
        bbo.a().a(paramChatConversation);
      }
      return;
      str2 = a.getResources().getString(2131493004);
      k = paramalj.m();
      str1 = str2;
      if ((paramalj instanceof akw))
      {
        b.a(paramChatConversation, (akw)paramalj, k, true);
        str1 = str2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     zh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */