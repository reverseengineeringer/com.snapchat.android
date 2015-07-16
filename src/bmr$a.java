public final class bmr$a
{
  boolean a;
  String[] b;
  String[] c;
  boolean d;
  
  public bmr$a(bmr parambmr)
  {
    a = d;
    b = bmr.a(parambmr);
    c = bmr.b(parambmr);
    d = g;
  }
  
  bmr$a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public final a a()
  {
    if (!a) {
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    }
    d = true;
    return this;
  }
  
  public final a a(bng... paramVarArgs)
  {
    if (!a) {
      throw new IllegalStateException("no TLS versions for cleartext connections");
    }
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfString[i] = e;
      i += 1;
    }
    c = arrayOfString;
    return this;
  }
  
  public final a a(String... paramVarArgs)
  {
    if (!a) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    if (paramVarArgs == null)
    {
      b = null;
      return this;
    }
    b = ((String[])paramVarArgs.clone());
    return this;
  }
  
  public final a b(String... paramVarArgs)
  {
    if (!a) {
      throw new IllegalStateException("no TLS versions for cleartext connections");
    }
    if (paramVarArgs == null)
    {
      c = null;
      return this;
    }
    c = ((String[])paramVarArgs.clone());
    return this;
  }
  
  public final bmr b()
  {
    return new bmr(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     bmr.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */