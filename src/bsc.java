import java.util.List;

public final class bsc
  extends ba
{
  String i = "https://api.crittercism.com";
  public String j = "https://apm.crittercism.com";
  String k = "524c99a04002057fcd000001";
  
  public bsc() {}
  
  public bsc(ba paramba)
  {
    super(paramba);
  }
  
  public final List a()
  {
    List localList = super.a();
    localList.add(j);
    return localList;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bsc)) {
      return false;
    }
    bsc localbsc = (bsc)paramObject;
    return (super.equals(paramObject)) && (a(i, i)) && (a(j, j)) && (a(k, k));
  }
  
  public final int hashCode()
  {
    return ((super.hashCode() * 31 + i.hashCode()) * 31 + j.hashCode()) * 31 + k.hashCode();
  }
}

/* Location:
 * Qualified Name:     bsc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */