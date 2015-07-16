.class final Laim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laim;->a(Landroid/content/Context;Laim$a;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lakr;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Laim$a;

.field final synthetic e:Laim;


# direct methods
.method constructor <init>(Laim;Landroid/content/SharedPreferences;Lakr;Landroid/content/Context;Laim$a;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Laim$1;->e:Laim;

    iput-object p2, p0, Laim$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Laim$1;->b:Lakr;

    iput-object p4, p0, Laim$1;->c:Landroid/content/Context;

    iput-object p5, p0, Laim$1;->d:Laim$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Laim$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ALLOWED_GPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    invoke-static {v2}, Laim;->a(Z)V

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lakr;->i(Z)V

    .line 93
    invoke-static {}, Lakr;->bp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Laim$1;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    :cond_0
    iget-object v0, p0, Laim$1;->d:Laim$a;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Laim$1;->d:Laim$a;

    invoke-interface {v0, v2}, Laim$a;->a(Z)V

    .line 102
    :cond_1
    return-void
.end method
