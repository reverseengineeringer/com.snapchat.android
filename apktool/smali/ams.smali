.class public final Lams;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lams$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lbkl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbkl;

.field public b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lajx;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lams;-><init>(Landroid/content/Intent;Lajx;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lajx;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lams;->b:Z

    .line 37
    iput-object p2, p0, Lams;->d:Lajx;

    .line 38
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lams;->c:Ljava/lang/String;

    .line 39
    const-class v0, Lbkl;

    invoke-virtual {p0, v0, p0}, Lams;->a(Ljava/lang/Class;Lts$b;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    check-cast p1, Lbkl;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    iput-object p1, p0, Lams;->a:Lbkl;

    invoke-virtual {p1}, Lbkl;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lams;->c:Ljava/lang/String;

    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lajx;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lajx;->u(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lams;->c:Ljava/lang/String;

    invoke-static {v0}, Lajx;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lams;->b:Z

    goto :goto_0

    :cond_4
    new-instance v0, Lbkl;

    invoke-direct {v0}, Lbkl;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkl;->a(Ljava/lang/Boolean;)Lbkl;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0c01c2

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkl;->a(Ljava/lang/String;)Lbkl;

    move-result-object v0

    iput-object v0, p0, Lams;->a:Lbkl;

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lams$a;

    iget-object v1, p0, Lams;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lams$a;-><init>(Lams;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "/loq/and/change_email"

    return-object v0
.end method
