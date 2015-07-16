.class public final Laim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laim$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Laim;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, p1, v0}, Laim;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laim;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Laim;->b:Landroid/location/LocationManager;

    .line 36
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p0}, Lakr;->j(Z)V

    .line 60
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbci;

    invoke-direct {v1}, Lbci;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Laim$a;)Landroid/app/AlertDialog;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    new-instance v3, Lakr;

    invoke-direct {v3}, Lakr;-><init>()V

    .line 77
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    const v0, 0x7f0c0161

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-static {}, Lakr;->bo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const v0, 0x7f0c02a4

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 84
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 85
    const v7, 0x7f0c0195

    new-instance v0, Laim$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laim$1;-><init>(Laim;Landroid/content/SharedPreferences;Lakr;Landroid/content/Context;Laim$a;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const v0, 0x7f0c0118

    new-instance v1, Laim$2;

    invoke-direct {v1, p0, p2}, Laim$2;-><init>(Laim;Laim$a;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    const v0, 0x7f0c015f

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Laim;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Laim;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
