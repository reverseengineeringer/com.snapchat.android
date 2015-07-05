public final class blq$a
{
  boolean a;
  String[] b;
  String[] c;
  boolean d;
  
  public blq$a(blq paramblq)
  {
    a = d;
    b = blq.a(paramblq);
    c = blq.b(paramblq);
    d = g;
  }
  
  blq$a(boolean paramBoolean)
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
  
  public final a a(bmf... paramVarArgs)
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
  
  public final blq b()
  {
    return new blq(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     blq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */