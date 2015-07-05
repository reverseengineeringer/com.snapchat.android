import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.squareup.otto.Bus;

public final class yl
{
  private final Context a;
  private final yq b;
  
  public yl(Context paramContext)
  {
    this(paramContext, yq.a());
  }
  
  @cf
  private yl(Context paramContext, yq paramyq)
  {
    a = paramContext;
    b = paramyq;
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb ako paramako, @cgc String paramString)
  {
    if (!paramako.e()) {
      throw new IllegalStateException("The provided chatFeedItem cannot be saved/unsaved. Please check canSaveOrUnsave before calling this method.");
    }
    int i = a.getResources().getColor(2131230727);
    int j = a.getResources().getColor(2131230811);
    String str2;
    int k;
    String str1;
    if (paramako.g())
    {
      str2 = a.getResources().getString(2131493009);
      k = paramako.m();
      str1 = str2;
      if ((paramako instanceof akb))
      {
        b.a(paramChatConversation, (akb)paramako, k, false);
        str1 = str2;
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramChatConversation = new bbg(null, str1, i, j, true, paramString);
        ban.a().a(paramChatConversation);
      }
      return;
      str2 = a.getResources().getString(2131493004);
      k = paramako.l();
      str1 = str2;
      if ((paramako instanceof akb))
      {
        b.a(paramChatConversation, (akb)paramako, k, true);
        str1 = str2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     yl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */