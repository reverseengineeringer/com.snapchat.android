import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.model.Friend;
import com.squareup.otto.Bus;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class pe
  extends pk
{
  private static final int DEFAULT_MAX_NUM_TO_FETCH = 20;
  private static final String FRIEND_USERNAMES_PARAM = "friend_usernames";
  private static final String FRIEND_USER_ID_PARAM = "friend_user_ids";
  private static final String TASK_NAME = "GetProfileInfoTask";
  private static final String USERNAME_PARAM = "username";
  private akp mUser = akp.g();
  private List<String> mUserIdsToGet = new ArrayList();
  private List<String> mUsernamesToGet = new ArrayList();
  
  public pe(@chc Friend paramFriend)
  {
    this(paramFriend, (byte)0);
  }
  
  private pe(@chc Friend paramFriend, byte paramByte)
  {
    if (mUser == null) {}
    List localList;
    do
    {
      return;
      localList = mUser.o();
      Collections.sort(localList);
      paramByte = localList.indexOf(paramFriend);
    } while (paramByte == -1);
    byte b2 = paramByte - 10;
    byte b4 = paramByte + 10;
    paramByte = b2;
    byte b1 = b4;
    if (b2 < 0)
    {
      b1 = b4 + Math.abs(b2);
      paramByte = 0;
    }
    b2 = b1;
    if (b1 >= localList.size()) {
      b2 = localList.size() - 1;
    }
    if (localList.size() > 20)
    {
      b1 = b3;
      label147:
      mUsernamesToGet = new ArrayList(b1);
      label159:
      if (paramByte <= b2)
      {
        paramFriend = (Friend)localList.get(paramByte);
        String str = mUserId;
        mUsernamesToGet.add(paramFriend.l());
        if (TextUtils.isEmpty(str)) {
          break label235;
        }
        mUserIdsToGet.add(str);
      }
    }
    for (;;)
    {
      paramByte += 1;
      break label159;
      break;
      b1 = localList.size();
      break label147;
      label235:
      mUserIdsToGet.add("");
    }
  }
  
  protected final String a()
  {
    return "/bq/bests";
  }
  
  protected final void a(String paramString)
  {
    Object localObject = TypeToken.get(new HashMap().getClass()).getType();
    paramString = (Map)aul.a().fromJson(paramString, (Type)localObject);
    localObject = mUsernamesToGet.iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      Map localMap = (Map)paramString.get(str);
      if (localMap != null)
      {
        ArrayList localArrayList = (ArrayList)localMap.get("best_friends");
        int i = ((Double)localMap.get("score")).intValue();
        ajp.sUsernamesToProfileInfo.put(str, new ajp(localArrayList, i));
      }
    }
    bbo.a().a(new bco(true));
  }
  
  protected final void a(String paramString, int paramInt)
  {
    bbo.a().a(new bco(false));
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", akr.l());
    localBundle.putString("friend_usernames", aul.a().toJson(mUsernamesToGet));
    if ((mUserIdsToGet != null) && (!mUserIdsToGet.isEmpty())) {
      localBundle.putString("friend_user_ids", aul.a().toJson(mUserIdsToGet));
    }
    return localBundle;
  }
  
  protected final void b(alp paramalp) {}
  
  protected final String c()
  {
    return "GetProfileInfoTask";
  }
}

/* Location:
 * Qualified Name:     pe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */