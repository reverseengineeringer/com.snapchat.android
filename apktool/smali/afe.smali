.class public Lafe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 30
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-static {v0, v1}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lafe;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-boolean v3, p0, Lafe;->a:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object v0, v1, v2

    const/4 v0, 0x0

    const v2, 0x7f0c00d0

    invoke-static {v0, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
