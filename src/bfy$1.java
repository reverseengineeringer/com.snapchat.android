import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

final class bfy$1
  implements aok
{
  bfy$1(bfy parambfy) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (bfy.a(this$0).contains(Integer.valueOf(i)))
    {
      bfy.a(this$0).remove(Integer.valueOf(i));
      if ((paramamk instanceof amv))
      {
        paramamk = a.iterator();
        while (paramamk.hasNext())
        {
          String str = (String)paramamk.next();
          bfy.a(this$0, str);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bfy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */