import android.os.Handler;
import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class axi
{
  private static final int SCCP_HTTP_PERSISTENCE_DELAY = 5000;
  
  @cgc
  public static akb a(ChatConversation paramChatConversation, bik parambik, boolean paramBoolean)
  {
    String str = parambik.a();
    akb localakb = paramChatConversation.f(str);
    if (localakb != null)
    {
      localakb.a(parambik, paramBoolean);
      return localakb;
    }
    if ((paramBoolean) && (TextUtils.equals(parambik.b(), bik.a.SAVED.name().toLowerCase(Locale.ENGLISH))))
    {
      paramChatConversation.b(str);
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          td.a().a(val$conversation.mId, false);
        }
      }, 5000L);
    }
    return null;
  }
  
  @Deprecated
  @cgb
  public static String a(@cgb String paramString)
  {
    String str2 = ajx.l();
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    return a(str1, paramString);
  }
  
  @Deprecated
  @cgb
  public static String a(@cgb String paramString1, @cgb String paramString2)
  {
    if (paramString1.compareTo(paramString2) <= 0) {
      return paramString1 + "~" + paramString2;
    }
    return paramString2 + "~" + paramString1;
  }
  
  @cgb
  public static String a(@cgb String paramString, @cgb List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size() + 1);
    localArrayList.add(paramString);
    localArrayList.addAll(paramList);
    Collections.sort(localArrayList);
    return avb.a(localArrayList, "~");
  }
  
  public static boolean a(@cgb ChatConversation paramChatConversation)
  {
    return mTheirUsername.indexOf(',') != -1;
  }
  
  public static boolean a(ChatFeedItem paramChatFeedItem)
  {
    return TextUtils.equals(ajx.l(), paramChatFeedItem.j());
  }
  
  @cgc
  public static String b(@cgb String paramString)
  {
    paramString = paramString.split("~");
    String str1 = ajx.l();
    int k = paramString.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      String str2 = paramString[i];
      if (!str2.equals(str1)) {
        return str2;
      }
      j += 1;
      i += 1;
    }
    if (j > 1) {
      return str1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     axi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */