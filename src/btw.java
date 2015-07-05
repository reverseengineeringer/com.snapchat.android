import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public final class btw
  extends btu
{
  public btw(Map paramMap)
  {
    super(paramMap);
    TreeMap localTreeMap = new TreeMap(new Comparator() {});
    localTreeMap.putAll(paramMap);
    a = localTreeMap;
  }
}

/* Location:
 * Qualified Name:     btw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */