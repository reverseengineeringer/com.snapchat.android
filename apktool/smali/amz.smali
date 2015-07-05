.class public final Lamz;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamz$b;,
        Lamz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lamz$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lamz$b;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 29
    const-string v0, "new_password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamz;->a:Ljava/lang/String;

    .line 30
    const-class v0, Lamz$b;

    invoke-virtual {p0, v0, p0}, Lamz;->a(Ljava/lang/Class;Lts$b;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 5

    .prologue
    .line 20
    check-cast p1, Lamz$b;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lamz;->b:Lamz$b;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lamz$b;

    sget-object v1, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->TOO_WEAK:Lcom/snapchat/android/fragments/settings/password/PasswordStrength;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/password/PasswordStrength;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0c01c2

    invoke-static {v3, v4, v2}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lamz$b;-><init>(Lamz;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lamz;->b:Lamz$b;

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lamz$a;

    iget-object v1, p0, Lamz;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lamz$a;-><init>(Lamz;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/loq/and/get_password_strength"

    return-object v0
.end method
