import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class agf
  extends bfe<ChatConversation>
{
  private final List<ChatConversation> a;
  
  public agf(@cgb List<ChatConversation> paramList, @cgb azo paramazo, @cgb bfe.a<ChatConversation> parama)
  {
    super(paramazo, parama);
    a = paramList;
  }
  
  private static boolean a(@cgb ChatConversation paramChatConversation, @cgb String paramString)
  {
    Object localObject = ajv.g();
    if (localObject == null) {
      return false;
    }
    paramChatConversation = atm.b(mTheirUsername, (ajv)localObject);
    localObject = paramChatConversation.k();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramChatConversation.h());
    localArrayList.add(localObject);
    localArrayList.addAll(Arrays.asList(((String)localObject).split(" ")));
    paramChatConversation = localArrayList.iterator();
    while (paramChatConversation.hasNext()) {
      if (aui.a((String)paramChatConversation.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  @cgc
  protected final List<ChatConversation> a(@cgc String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = new ArrayList(a).iterator();
    while (localIterator.hasNext())
    {
      ChatConversation localChatConversation = (ChatConversation)localIterator.next();
      if (a(localChatConversation, paramString)) {
        localArrayList.add(localChatConversation);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     agf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */