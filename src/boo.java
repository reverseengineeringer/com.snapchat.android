import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;

final class boo
  extends bpi
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
  
  boo(Context paramContext)
  {
    b = paramContext;
  }
  
  public final boolean a(bpg parambpg)
  {
    Uri localUri = d;
    return ("content".equals(localUri.getScheme())) && (ContactsContract.Contacts.CONTENT_URI.getHost().equals(localUri.getHost())) && (a.match(d) != -1);
  }
  
  public final bpi.a b(bpg parambpg)
  {
    ContentResolver localContentResolver = b.getContentResolver();
    Uri localUri = d;
    parambpg = localUri;
    switch (a.match(localUri))
    {
    default: 
      throw new IllegalStateException("Invalid uri: " + localUri);
    case 1: 
      localUri = ContactsContract.Contacts.lookupContact(localContentResolver, localUri);
      parambpg = localUri;
      if (localUri == null) {
        parambpg = null;
      }
      break;
    }
    while (parambpg != null)
    {
      return new bpi.a(parambpg, bpd.d.b);
      if (Build.VERSION.SDK_INT < 14)
      {
        parambpg = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, parambpg);
      }
      else
      {
        parambpg = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, parambpg, true);
        continue;
        parambpg = localContentResolver.openInputStream(localUri);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     boo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */