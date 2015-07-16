.class public final Laoa;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lbln;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lbln;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 30
    const-string v0, "refresh_suggestions"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laoa;->a:Z

    .line 31
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoa;->c:Ljava/lang/String;

    .line 32
    const-string v0, "requested_username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoa;->d:Ljava/lang/String;

    .line 33
    const-class v0, Lbln;

    invoke-virtual {p0, v0, p0}, Laoa;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Laoa$a;

    iget-object v1, p0, Laoa;->c:Ljava/lang/String;

    iget-object v2, p0, Laoa;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Laoa$a;-><init>(Laoa;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/bq/suggest_username"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lbln;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Laoa;->b:Lbln;

    :cond_0
    return-void
.end method
