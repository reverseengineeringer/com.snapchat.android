.class public final Laod;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laod$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lblk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lblk;

.field public b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Laod;->b:Z

    .line 34
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laod;->c:Ljava/lang/String;

    .line 35
    const-string v0, "pre_auth_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laod;->d:Ljava/lang/String;

    .line 36
    const-class v0, Lblk;

    invoke-virtual {p0, v0, p0}, Laod;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Laod$a;

    iget-object v1, p0, Laod;->c:Ljava/lang/String;

    iget-object v2, p0, Laod;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Laod$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "/loq/two_fa_phone_verify"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 21
    check-cast p1, Lblk;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Laod;->a:Lblk;

    :goto_0
    return-void

    :cond_1
    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Laod;->b:Z

    goto :goto_0

    :cond_2
    new-instance v0, Lblk;

    invoke-direct {v0}, Lblk;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lblk;->a(Ljava/lang/Boolean;)Lblk;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c01c2

    invoke-static {v2, v3, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lblk;->a(Ljava/lang/String;)Lblk;

    move-result-object v0

    iput-object v0, p0, Laod;->a:Lblk;

    goto :goto_0
.end method
