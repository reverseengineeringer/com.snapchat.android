import java.net.SocketImpl;
import java.net.SocketImplFactory;

public final class bre
  implements SocketImplFactory
{
  private Class a;
  private SocketImplFactory b;
  private bum c;
  private btx d;
  
  public bre(Class paramClass, bum parambum, btx parambtx)
  {
    c = parambum;
    d = parambtx;
    a = paramClass;
    paramClass = a;
    if (paramClass == null) {
      throw new bta("Class was null");
    }
    try
    {
      paramClass.newInstance();
      return;
    }
    catch (Throwable paramClass)
    {
      throw new bta("Unable to create new instance", paramClass);
    }
  }
  
  public bre(SocketImplFactory paramSocketImplFactory, bum parambum, btx parambtx)
  {
    c = parambum;
    d = parambtx;
    b = paramSocketImplFactory;
    paramSocketImplFactory = b;
    if (paramSocketImplFactory == null) {
      throw new bta("Factory was null");
    }
    try
    {
      if (paramSocketImplFactory.createSocketImpl() == null) {
        throw new bta("Factory does not work");
      }
    }
    catch (Throwable paramSocketImplFactory)
    {
      throw new bta("Factory does not work", paramSocketImplFactory);
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
      return new brd(c, d, (SocketImpl)localObject);
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
 * Qualified Name:     bre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */