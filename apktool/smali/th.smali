.class public abstract Lth;
.super Ltv;
.source "SourceFile"


# instance fields
.field public final mUser:Lajv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ltv;-><init>()V

    .line 19
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iput-object v0, p0, Lth;->mUser:Lajv;

    .line 20
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
    .line 40
    invoke-super {p0, p1}, Ltv;->a(Luc;)V

    .line 42
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 44
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->e()I

    .line 46
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lpl;

    invoke-direct {v0}, Lpl;-><init>()V

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "dummy"

    invoke-static {v0}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lth;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lth;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
