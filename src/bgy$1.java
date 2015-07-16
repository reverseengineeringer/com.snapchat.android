import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

final class bgy$1
  implements apg
{
  bgy$1(bgy parambgy) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (bgy.a(this$0).contains(Integer.valueOf(i)))
    {
      bgy.a(this$0).remove(Integer.valueOf(i));
      if ((paramanh instanceof ans))
      {
        paramanh = a.iterator();
        while (paramanh.hasNext())
        {
          String str = (String)paramanh.next();
          bgy.a(this$0, str);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bgy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */