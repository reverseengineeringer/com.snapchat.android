public abstract class fr
{
  public static fr a(Class paramClass)
  {
    if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
      return new fm(paramClass.getSimpleName());
    }
    return new fp(paramClass.getSimpleName());
  }
  
  public abstract void a(String paramString);
  
  public abstract void b(String paramString);
}

/* Location:
 * Qualified Name:     fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */