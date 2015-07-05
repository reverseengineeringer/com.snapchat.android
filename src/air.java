import java.util.List;

public class air
{
  private List<String> mDirectoryUrls;
  private List<ajd> mProxyEndpoints;
  private long mVersion = -1L;
  
  public air(List<ajd> paramList, List<String> paramList1)
  {
    mProxyEndpoints = paramList;
    mDirectoryUrls = paramList1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof air)) {
        return false;
      }
      paramObject = (air)paramObject;
    } while ((mDirectoryUrls.containsAll(mDirectoryUrls)) && (mDirectoryUrls.containsAll(mDirectoryUrls)) && (mProxyEndpoints.containsAll(mProxyEndpoints)) && (mProxyEndpoints.containsAll(mProxyEndpoints)) && (mVersion == mVersion));
    return false;
  }
  
  public int hashCode()
  {
    return mDirectoryUrls.hashCode();
  }
  
  public String toString()
  {
    return mDirectoryUrls.toString() + ", " + mProxyEndpoints.toString() + ", " + mVersion;
  }
}

/* Location:
 * Qualified Name:     air
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */