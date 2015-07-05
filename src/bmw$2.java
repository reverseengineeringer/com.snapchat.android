import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class bmw$2
  implements caj
{
  boolean a;
  
  public bmw$2(bmw parambmw, bzw parambzw, bmr parambmr, bzv parambzv) {}
  
  public final cak E_()
  {
    return b.E_();
  }
  
  public final long a(bzu parambzu, long paramLong)
  {
    try
    {
      paramLong = b.a(parambzu, paramLong);
      if (paramLong == -1L)
      {
        if (!a)
        {
          a = true;
          d.close();
        }
        return -1L;
      }
    }
    catch (IOException parambzu)
    {
      if (!a)
      {
        a = true;
        c.a();
      }
      throw parambzu;
    }
    parambzu.a(d.b(), b - paramLong, paramLong);
    d.q();
    return paramLong;
  }
  
  public final void close()
  {
    if ((!a) && (!bmp.a(this, TimeUnit.MILLISECONDS)))
    {
      a = true;
      c.a();
    }
    b.close();
  }
}

/* Location:
 * Qualified Name:     bmw.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */