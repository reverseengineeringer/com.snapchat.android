import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;

public final class acf
{
  public final ChannelPage a;
  public final DSnapPage b;
  
  public acf()
  {
    a = null;
    b = null;
  }
  
  public acf(ChannelPage paramChannelPage, DSnapPage paramDSnapPage)
  {
    a = paramChannelPage;
    b = paramDSnapPage;
  }
  
  public final String toString()
  {
    Object localObject1;
    if (a != null)
    {
      localObject1 = a;
      if (b == null) {
        break label48;
      }
    }
    label48:
    for (Object localObject2 = b;; localObject2 = "None")
    {
      return String.format("(%s, %s)", new Object[] { localObject1, localObject2 });
      localObject1 = "None";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     acf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */