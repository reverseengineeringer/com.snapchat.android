import java.util.Collections;
import java.util.Comparator;

final class alo
  implements Comparator<alc>
{
  private final ala a;
  
  private alo(@cgb ala paramala)
  {
    a = paramala;
  }
  
  public static Comparator<alc> a(ala paramala)
  {
    return Collections.reverseOrder(new alo(paramala));
  }
}

/* Location:
 * Qualified Name:     alo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */