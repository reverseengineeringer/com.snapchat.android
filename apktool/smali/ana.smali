.class public final Lana;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lana$b;,
        Lana$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lana$b;",
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
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lana;->a:Z

    .line 28
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lana;->c:Ljava/lang/String;

    .line 29
    const-class v0, Lana$b;

    invoke-virtual {p0, v0, p0}, Lana;->a(Ljava/lang/Class;Lts$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 18
    check-cast p1, Lana$b;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lana;->a:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lana;->a:Z

    if-eqz p1, :cond_1

    iget-object v0, p1, Lana$b;->a:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lana;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c01c2

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lana$a;

    iget-object v1, p0, Lana;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lana$a;-><init>(Lana;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/bq/reauth"

    return-object v0
.end method
