import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class ald
  extends akw
{
  public static final String TYPE = "text";
  public boolean mHasLinks;
  
  protected ald(ald.a parama)
  {
    super(parama);
    mUserText = text;
    mHasLinks = hasLinks;
  }
  
  public ald(bif parambif)
  {
    super(parambif);
    if ((parambif.b()) && (parambif.a().g()))
    {
      String str = parambif.a().e();
      parambif = parambif.a().f();
      Collections.sort(parambif, new Comparator() {});
      StringBuilder localStringBuilder = new StringBuilder(str);
      Iterator localIterator = parambif.iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        bko localbko = (bko)localIterator.next();
        int j = i;
        if (localbko.c().a() == big.a.LINK)
        {
          parambif = null;
          if (localbko.c().b() == null) {
            break label249;
          }
          parambif = "<a href=\"" + localbko.c().b() + "\">" + str.substring(localbko.a().intValue(), localbko.b().intValue()) + "</a>";
        }
        for (;;)
        {
          j = i;
          if (parambif != null)
          {
            localStringBuilder.replace(localbko.a().intValue() + i, localbko.b().intValue() + i, parambif);
            j = i + (parambif.length() - (localbko.b().intValue() - localbko.a().intValue()));
            mHasLinks = true;
          }
          i = j;
          break;
          label249:
          if (localbko.c().c() != null) {
            parambif = "<a href=\"" + localbko.c().c() + "\">" + str.substring(localbko.a().intValue(), localbko.b().intValue()) + "</a>";
          }
        }
      }
      mUserText = localStringBuilder.toString();
    }
  }
  
  public final void a(akw paramakw)
  {
    super.a(paramakw);
    mUserText = mUserText;
  }
  
  public final String h()
  {
    return "text";
  }
  
  public static final class a
    extends akw.a
  {
    public boolean hasLinks;
    public String text;
    
    public a(String paramString1, String paramString2)
    {
      super(paramString2);
    }
    
    public final ald a()
    {
      return new ald(this);
    }
  }
}

/* Location:
 * Qualified Name:     ald
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */