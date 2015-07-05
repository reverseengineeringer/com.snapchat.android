public abstract class fi
{
  public static fi a(Class paramClass)
  {
    if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
      return new fd(paramClass.getSimpleName());
    }
    return new fg(paramClass.getSimpleName());
  }
  
  public abstract void a(String paramString);
  
  public abstract void b(String paramString);
}

/* Location:
 * Qualified Name:     fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */