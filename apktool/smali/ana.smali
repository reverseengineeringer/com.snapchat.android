.class public abstract Lana;
.super Land;
.source "SourceFile"


# instance fields
.field protected h:Lakp;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Land;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lana;->h:Lakp;

    .line 27
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dummy"

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lana;->l_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract l_()Ljava/lang/String;
.end method

.method public onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Land;->onResult(Lus;)V

    .line 44
    invoke-virtual {p0}, Lana;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lus;->mResponseCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 46
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-virtual {v0}, Laph;->e()I

    .line 48
    :cond_0
    return-void
.end method
