.class public abstract Lamd;
.super Lamg;
.source "SourceFile"


# instance fields
.field protected h:Lajv;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lamg;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lamd;->h:Lajv;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Luc;)V
    .locals 2
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Lamg;->a(Luc;)V

    .line 44
    invoke-virtual {p0}, Lamd;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 46
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->e()I

    .line 48
    :cond_0
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dummy"

    invoke-static {v1}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lamd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
