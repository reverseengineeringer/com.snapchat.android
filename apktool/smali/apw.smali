.class public final Lapw;
.super Laqb;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/SnapchatActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    check-cast p1, Lcom/snapchat/android/SnapchatActivity;

    iput-object p1, p0, Lapw;->a:Lcom/snapchat/android/SnapchatActivity;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lajx;->c(Z)V

    .line 28
    iget-object v0, p0, Lapw;->a:Lcom/snapchat/android/SnapchatActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lapw;->a:Lcom/snapchat/android/SnapchatActivity;

    const-class v3, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    iget-object v0, p0, Lapw;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatActivity;->finish()V

    .line 30
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
