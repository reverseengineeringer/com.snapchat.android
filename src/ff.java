public final class ff
{
  public transient ff.a[] a = new ff.a[20];
  private transient int b;
  private int c = 15;
  private float d = 0.75F;
  
  public ff()
  {
    this((byte)0);
  }
  
  private ff(byte paramByte) {}
  
  public final Object a(int paramInt, Object paramObject)
  {
    Object localObject2 = a;
    int i = (paramInt & 0x7FFFFFFF) % localObject2.length;
    ff.a[] arrayOfa1;
    int k;
    ff.a[] arrayOfa2;
    int j;
    for (Object localObject1 = localObject2[i];; localObject1 = d)
    {
      if (localObject1 == null)
      {
        localObject1 = localObject2;
        if (b >= c)
        {
          i = a.length;
          arrayOfa1 = a;
          k = i * 2 + 1;
          arrayOfa2 = new ff.a[k];
          c = ((int)(k * d));
          a = arrayOfa2;
          j = i - 1;
          if (i > 0) {
            break;
          }
          localObject1 = a;
          i = (paramInt & 0x7FFFFFFF) % localObject1.length;
        }
        localObject1[i] = new ff.a(paramInt, paramInt, paramObject, localObject1[i]);
        b += 1;
        return null;
      }
      if (a == paramInt)
      {
        localObject2 = c;
        c = paramObject;
        return localObject2;
      }
    }
    for (localObject1 = arrayOfa1[j];; localObject1 = localObject2)
    {
      if (localObject1 == null)
      {
        i = j;
        break;
      }
      localObject2 = d;
      i = (a & 0x7FFFFFFF) % k;
      d = arrayOfa2[i];
      arrayOfa2[i] = localObject1;
    }
  }
  
  public static final class a
  {
    public int a;
    int b;
    public Object c;
    public a d;
    
    protected a(int paramInt1, int paramInt2, Object paramObject, a parama)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramObject;
      d = parama;
    }
  }
}

/* Location:
 * Qualified Name:     ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */