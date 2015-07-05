package com.google.gson.internal;

import java.util.Map.Entry;

final class LinkedTreeMap$d<K, V>
  implements Map.Entry<K, V>
{
  d<K, V> a;
  d<K, V> b;
  d<K, V> c;
  d<K, V> d;
  d<K, V> e;
  final K f;
  V g;
  int h;
  
  LinkedTreeMap$d()
  {
    f = null;
    e = this;
    d = this;
  }
  
  LinkedTreeMap$d(d<K, V> paramd1, K paramK, d<K, V> paramd2, d<K, V> paramd3)
  {
    a = paramd1;
    f = paramK;
    h = 1;
    d = paramd2;
    e = paramd3;
    d = this;
    e = this;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      if (f != null) {
        break label56;
      }
      bool1 = bool2;
      if (((Map.Entry)paramObject).getKey() == null)
      {
        if (g != null) {
          break label77;
        }
        bool1 = bool2;
        if (((Map.Entry)paramObject).getValue() != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label56:
      label77:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!f.equals(((Map.Entry)paramObject).getKey()));
        break;
        bool1 = bool2;
      } while (!g.equals(((Map.Entry)paramObject).getValue()));
    }
  }
  
  public final K getKey()
  {
    return (K)f;
  }
  
  public final V getValue()
  {
    return (V)g;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (f == null)
    {
      i = 0;
      if (g != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = f.hashCode();
      break;
      label33:
      j = g.hashCode();
    }
  }
  
  public final V setValue(V paramV)
  {
    Object localObject = g;
    g = paramV;
    return (V)localObject;
  }
  
  public final String toString()
  {
    return f + "=" + g;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */