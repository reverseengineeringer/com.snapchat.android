.class public final Lamh;
.super Lamq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lamq;-><init>(Landroid/content/Intent;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    const-string v0, "LogoutOperation"

    const-string v1, "LogoutOperation process"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-super {p0, p1}, Lamq;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public final a(Luc;)V
    .locals 3
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-super {p0, p1}, Lamq;->a(Luc;)V

    .line 37
    const-string v0, "LogoutOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResult - wasSuccessful "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Luc;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lamh;->h:Lajv;

    invoke-virtual {v0}, Lajv;->v()V

    .line 41
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/ph/logout"

    return-object v0
.end method
