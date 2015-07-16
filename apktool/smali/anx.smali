.class public final Lanx;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanx$b;,
        Lanx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lanx$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanx;->a:Z

    .line 28
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanx;->c:Ljava/lang/String;

    .line 29
    const-class v0, Lanx$b;

    invoke-virtual {p0, v0, p0}, Lanx;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lanx$a;

    iget-object v1, p0, Lanx;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lanx$a;-><init>(Lanx;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/bq/reauth"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 18
    check-cast p1, Lanx$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lanx;->a:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lanx;->a:Z

    if-eqz p1, :cond_1

    iget-object v0, p1, Lanx$b;->a:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lanx;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c01c2

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
