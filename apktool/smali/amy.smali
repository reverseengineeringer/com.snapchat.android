.class public final Lamy;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lbkj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbkj;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->b:Z

    .line 27
    const-class v0, Lbkj;

    invoke-virtual {p0, v0, p0}, Lamy;->a(Ljava/lang/Class;Lts$b;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 20
    check-cast p1, Lbkj;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lamy;->a:Lbkj;

    :goto_0
    return-void

    :cond_1
    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lamy;->b:Z

    goto :goto_0

    :cond_2
    new-instance v0, Lbkj;

    invoke-direct {v0}, Lbkj;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkj;->a(Ljava/lang/Boolean;)Lbkj;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c01c2

    invoke-static {v2, v3, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkj;->a(Ljava/lang/String;)Lbkj;

    move-result-object v0

    iput-object v0, p0, Lamy;->a:Lbkj;

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lpl;

    invoke-direct {v0}, Lpl;-><init>()V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/loq/two_fa_recovery_code"

    return-object v0
.end method
