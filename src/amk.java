import java.util.Collections;
import java.util.Comparator;

final class amk
  implements Comparator<aly>
{
  private final alv a;
  
  private amk(@chc alv paramalv)
  {
    a = paramalv;
  }
  
  public static Comparator<aly> a(alv paramalv)
  {
    return Collections.reverseOrder(new amk(paramalv));
  }
}

/* Location:
 * Qualified Name:     amk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */