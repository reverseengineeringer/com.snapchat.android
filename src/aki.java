import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class aki
  extends akb
{
  public static final String TYPE = "text";
  public boolean mHasLinks;
  
  protected aki(aki.a parama)
  {
    super(parama);
    mUserText = text;
    mHasLinks = hasLinks;
  }
  
  public aki(bhf parambhf)
  {
    super(parambhf);
    if ((parambhf.b()) && (parambhf.a().g()))
    {
      String str = parambhf.a().e();
      parambhf = parambhf.a().f();
      Collections.sort(parambhf, new Comparator() {});
      StringBuilder localStringBuilder = new StringBuilder(str);
      Iterator localIterator = parambhf.iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        bjn localbjn = (bjn)localIterator.next();
        int j = i;
        if (localbjn.c().a() == bhg.a.LINK)
        {
          parambhf = null;
          if (localbjn.c().b() == null) {
            break label249;
          }
          parambhf = "<a href=\"" + localbjn.c().b() + "\">" + str.substring(localbjn.a().intValue(), localbjn.b().intValue()) + "</a>";
        }
        for (;;)
        {
          j = i;
          if (parambhf != null)
          {
            localStringBuilder.replace(localbjn.a().intValue() + i, localbjn.b().intValue() + i, parambhf);
            j = i + (parambhf.length() - (localbjn.b().intValue() - localbjn.a().intValue()));
            mHasLinks = true;
          }
          i = j;
          break;
          label249:
          if (localbjn.c().c() != null) {
            parambhf = "<a href=\"" + localbjn.c().c() + "\">" + str.substring(localbjn.a().intValue(), localbjn.b().intValue()) + "</a>";
          }
        }
      }
      mUserText = localStringBuilder.toString();
    }
  }
  
  public final void a(akb paramakb)
  {
    super.a(paramakb);
    mUserText = mUserText;
  }
  
  public final String h()
  {
    return "text";
  }
  
  public static final class a
    extends akb.a
  {
    public boolean hasLinks;
    public String text;
    
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
    
    public final aki a()
    {
      return new aki(this);
    }
  }
}

/* Location:
 * Qualified Name:     aki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */