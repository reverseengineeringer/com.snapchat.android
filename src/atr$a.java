import android.text.TextUtils;

public final class atr$a
{
  public String mDisplayName;
  public long mLastUpdatedTimestamp;
  public String mNumber;
  
  public atr$a(String paramString1, String paramString2, long paramLong)
  {
    mNumber = paramString1;
    mDisplayName = paramString2;
    mLastUpdatedTimestamp = paramLong;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof a)) {
      return TextUtils.equals(mNumber, mNumber);
    }
    return false;
  }
  
  public final int hashCode()
  {
    if (TextUtils.isEmpty(mNumber)) {
      return 0;
    }
    return mNumber.hashCode();
  }
}

/* Location:
 * Qualified Name:     atr.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */