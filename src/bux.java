import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public final class bux
  extends buv
{
  public bux(Map paramMap)
  {
    super(paramMap);
    TreeMap localTreeMap = new TreeMap(new Comparator() {});
    localTreeMap.putAll(paramMap);
    a = localTreeMap;
  }
}

/* Location:
 * Qualified Name:     bux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */