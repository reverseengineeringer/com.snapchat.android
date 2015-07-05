package com.google.gson.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class LinkedTreeMap$c<T>
  implements Iterator<T>
{
  LinkedTreeMap.d<K, V> b = e.e.d;
  LinkedTreeMap.d<K, V> c = null;
  int d = e.d;
  
  private LinkedTreeMap$c(LinkedTreeMap paramLinkedTreeMap) {}
  
  final LinkedTreeMap.d<K, V> a()
  {
    LinkedTreeMap.d locald = b;
    if (locald == e.e) {
      throw new NoSuchElementException();
    }
    if (e.d != d) {
      throw new ConcurrentModificationException();
    }
    b = d;
    c = locald;
    return locald;
  }
  
  public final boolean hasNext()
  {
    return b != e.e;
  }
  
  public final void remove()
  {
    if (c == null) {
      throw new IllegalStateException();
    }
    e.a(c, true);
    c = null;
    d = e.d;
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */