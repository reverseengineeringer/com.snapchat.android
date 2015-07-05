import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyType;

public class ayh
{
  public final String mKey;
  public final SlightlySecurePreferencesKeyType mType;
  
  public ayh(String paramString, SlightlySecurePreferencesKeyType paramSlightlySecurePreferencesKeyType)
  {
    mKey = paramString;
    mType = paramSlightlySecurePreferencesKeyType;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ayh)) {
      return false;
    }
    paramObject = (ayh)paramObject;
    return mKey.equals(mKey);
  }
  
  public int hashCode()
  {
    return mKey.hashCode();
  }
  
  public String toString()
  {
    return mKey;
  }
}

/* Location:
 * Qualified Name:     ayh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */