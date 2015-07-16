.class public final Lane;
.super Lann;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lann;-><init>(Landroid/content/Intent;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lann;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/ph/logout"

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-super {p0, p1}, Lann;->onResult(Lus;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResult - wasSuccessful "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lus;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    iget-object v0, p0, Lane;->h:Lakp;

    invoke-virtual {v0}, Lakp;->v()V

    .line 41
    return-void
.end method
