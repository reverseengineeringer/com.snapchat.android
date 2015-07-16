import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Provider.Service;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLContextSpi;

public final class bvg
  extends Provider.Service
{
  public static final String[] a = { "Default", "SSL", "TLSv1.1", "TLSv1.2", "SSLv3", "TLSv1", "TLS" };
  private bum b;
  private btx c;
  private Provider.Service d;
  
  private bvg(Provider.Service paramService, bum parambum, btx parambtx)
  {
    super(paramService.getProvider(), paramService.getType(), paramService.getAlgorithm(), paramService.getClassName(), null, null);
    b = parambum;
    c = parambtx;
    d = paramService;
  }
  
  private static bvg a(Provider.Service paramService, bum parambum, btx parambtx)
  {
    parambtx = new bvg(paramService, parambum, parambtx);
    try
    {
      Field[] arrayOfField = Provider.Service.class.getFields();
      int i = 0;
      for (;;)
      {
        parambum = parambtx;
        if (i >= arrayOfField.length) {
          break;
        }
        arrayOfField[i].setAccessible(true);
        arrayOfField[i].set(parambtx, arrayOfField[i].get(paramService));
        i += 1;
      }
      return parambum;
    }
    catch (Exception paramService)
    {
      parambum = null;
    }
  }
  
  private static Provider a()
  {
    Provider localProvider = null;
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      if (localSSLContext != null) {
        localProvider = localSSLContext.getProvider();
      }
      return localProvider;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return null;
  }
  
  public static boolean a(bum parambum, btx parambtx)
  {
    int i = 0;
    if (!bvh.a()) {}
    Provider localProvider;
    do
    {
      return false;
      localProvider = a();
    } while (localProvider == null);
    boolean bool2;
    for (boolean bool1 = false; i < a.length; bool1 = bool2)
    {
      Object localObject = localProvider.getService("SSLContext", a[i]);
      bool2 = bool1;
      if (localObject != null)
      {
        bool2 = bool1;
        if (!(localObject instanceof bvg))
        {
          localObject = a((Provider.Service)localObject, parambum, parambtx);
          bool2 = bool1;
          if (localObject != null) {
            bool2 = bool1 | ((bvg)localObject).b();
          }
        }
      }
      i += 1;
    }
    return bool1;
  }
  
  private boolean b()
  {
    Provider localProvider = getProvider();
    if (localProvider == null) {
      return false;
    }
    try
    {
      Method localMethod = Provider.class.getDeclaredMethod("putService", new Class[] { Provider.Service.class });
      localMethod.setAccessible(true);
      localMethod.invoke(localProvider, new Object[] { this });
      localProvider.put("SSLContext.DummySSLAlgorithm", getClassName());
      localProvider.remove(getType() + "." + getAlgorithm());
      localProvider.remove("SSLContext.DummySSLAlgorithm");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public final Object newInstance(Object paramObject)
  {
    Object localObject = super.newInstance(paramObject);
    paramObject = localObject;
    try
    {
      if ((localObject instanceof SSLContextSpi))
      {
        bvh localbvh = bvh.a((SSLContextSpi)localObject, b, c);
        paramObject = localObject;
        if (localbvh != null) {
          paramObject = localbvh;
        }
      }
      return paramObject;
    }
    catch (ThreadDeath paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (Throwable paramObject)
    {
      bue.a((Throwable)paramObject);
    }
    return localObject;
  }
}

/* Location:
 * Qualified Name:     bvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */