import java.net.SocketImpl;
import java.net.SocketImplFactory;

public final class bqd
  implements SocketImplFactory
{
  private Class a;
  private SocketImplFactory b;
  private btl c;
  private bsw d;
  
  public bqd(Class paramClass, btl parambtl, bsw parambsw)
  {
    c = parambtl;
    d = parambsw;
    a = paramClass;
    paramClass = a;
    if (paramClass == null) {
      throw new brz("Class was null");
    }
    try
    {
      paramClass.newInstance();
      return;
    }
    catch (Throwable paramClass)
    {
      throw new brz("Unable to create new instance", paramClass);
    }
  }
  
  public bqd(SocketImplFactory paramSocketImplFactory, btl parambtl, bsw parambsw)
  {
    c = parambtl;
    d = parambsw;
    b = paramSocketImplFactory;
    paramSocketImplFactory = b;
    if (paramSocketImplFactory == null) {
      throw new brz("Factory was null");
    }
    try
    {
      if (paramSocketImplFactory.createSocketImpl() == null) {
        throw new brz("Factory does not work");
      }
    }
    catch (Throwable paramSocketImplFactory)
    {
      throw new brz("Factory does not work", paramSocketImplFactory);
    }
  }
  
  public final SocketImpl createSocketImpl()
  {
    Object localObject = null;
    if (b != null) {
      localObject = b.createSocketImpl();
    }
    while (localObject != null)
    {
      return new bqc(c, d, (SocketImpl)localObject);
      try
      {
        SocketImpl localSocketImpl = (SocketImpl)a.newInstance();
        localObject = localSocketImpl;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
      }
      catch (InstantiationException localInstantiationException)
      {
        localInstantiationException.printStackTrace();
      }
    }
    return (SocketImpl)localObject;
  }
}

/* Location:
 * Qualified Name:     bqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */