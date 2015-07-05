import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class ait
{
  public static HashMap<String, ait> sUsernamesToProfileInfo = new HashMap();
  private ArrayList<String> mBestFriends = new ArrayList();
  public int mScore = -1;
  
  public ait(List<String> paramList, int paramInt)
  {
    a(paramList);
    mScore = paramInt;
  }
  
  public static void a(@cgb final Friend paramFriend, @cgb final ait.a parama)
  {
    ait localait = (ait)sUsernamesToProfileInfo.get(paramFriend.h());
    if (localait == null)
    {
      new on(paramFriend)
      {
        protected final void a(aku paramAnonymousaku)
        {
          super.a(paramAnonymousaku);
          parama.a((ait)ait.sUsernamesToProfileInfo.get(paramFriend.h()));
        }
      }.executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    parama.a(localait);
  }
  
  private void a(List<String> paramList)
  {
    mBestFriends.clear();
    ajv localajv = ajv.g();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      mBestFriends.add(atm.e(str, localajv));
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgc ait paramait);
  }
}

/* Location:
 * Qualified Name:     ait
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */