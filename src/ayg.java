import android.os.Handler;
import android.text.TextUtils;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class ayg
{
  private static final int SCCP_HTTP_PERSISTENCE_DELAY = 5000;
  
  @chd
  public static akw a(ChatConversation paramChatConversation, bjk parambjk, boolean paramBoolean)
  {
    String str = parambjk.a();
    akw localakw = paramChatConversation.f(str);
    if (localakw != null)
    {
      localakw.a(parambjk, paramBoolean);
      return localakw;
    }
    if ((paramBoolean) && (TextUtils.equals(parambjk.b(), bjk.a.SAVED.name().toLowerCase(Locale.ENGLISH))))
    {
      paramChatConversation.b(str);
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          tt.a().a(val$conversation.mId, false);
        }
      }, 5000L);
    }
    return null;
  }
  
  @Deprecated
  @chc
  public static String a(@chc String paramString)
  {
    String str2 = akr.l();
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    return a(str1, paramString);
  }
  
  @Deprecated
  @chc
  public static String a(@chc String paramString1, @chc String paramString2)
  {
    if (paramString1.compareTo(paramString2) <= 0) {
      return paramString1 + "~" + paramString2;
    }
    return paramString2 + "~" + paramString1;
  }
  
  @chc
  public static String a(@chc String paramString, @chc List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size() + 1);
    localArrayList.add(paramString);
    localArrayList.addAll(paramList);
    Collections.sort(localArrayList);
    return avz.a(localArrayList, "~");
  }
  
  public static boolean a(@chc ChatConversation paramChatConversation)
  {
    return mTheirUsername.indexOf(',') != -1;
  }
  
  public static boolean a(ChatFeedItem paramChatFeedItem)
  {
    return TextUtils.equals(akr.l(), paramChatFeedItem.j());
  }
  
  @chd
  public static String b(@chc String paramString)
  {
    paramString = paramString.split("~");
    String str1 = akr.l();
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
 * Qualified Name:     ayg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */