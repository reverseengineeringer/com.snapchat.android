import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;

final class bpp
  extends bqj
{
  private static final UriMatcher a;
  private final Context b;
  
  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    a = localUriMatcher;
    localUriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
    a.addURI("com.android.contacts", "contacts/lookup/*", 1);
    a.addURI("com.android.contacts", "contacts/#/photo", 2);
    a.addURI("com.android.contacts", "contacts/#", 3);
    a.addURI("com.android.contacts", "display_photo/#", 4);
  }
  
  bpp(Context paramContext)
  {
    b = paramContext;
  }
  
  public final boolean a(bqh parambqh)
  {
    Uri localUri = d;
    return ("content".equals(localUri.getScheme())) && (ContactsContract.Contacts.CONTENT_URI.getHost().equals(localUri.getHost())) && (a.match(d) != -1);
  }
  
  public final bqj.a b(bqh parambqh)
  {
    ContentResolver localContentResolver = b.getContentResolver();
    Uri localUri = d;
    parambqh = localUri;
    switch (a.match(localUri))
    {
    default: 
      throw new IllegalStateException("Invalid uri: " + localUri);
    case 1: 
      localUri = ContactsContract.Contacts.lookupContact(localContentResolver, localUri);
      parambqh = localUri;
      if (localUri == null) {
        parambqh = null;
      }
      break;
    }
    while (parambqh != null)
    {
      return new bqj.a(parambqh, bqe.d.b);
      if (Build.VERSION.SDK_INT < 14)
      {
        parambqh = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, parambqh);
      }
      else
      {
        parambqh = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, parambqh, true);
        continue;
        parambqh = localContentResolver.openInputStream(localUri);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bpp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */