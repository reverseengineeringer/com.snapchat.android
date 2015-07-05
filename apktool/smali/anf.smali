.class public final Lanf;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanf$b;,
        Lanf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lanf$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lbkt;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lajx;

.field private g:Laya;

.field private k:Laol;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-static {}, Laya;->a()Laya;

    move-result-object v1

    invoke-static {}, Laol;->a()Laol;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lanf;-><init>(Landroid/content/Intent;Lajx;Laya;Laol;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lajx;Laya;Laol;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 55
    iput-object p2, p0, Lanf;->f:Lajx;

    .line 56
    iput-object p3, p0, Lanf;->g:Laya;

    .line 57
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanf;->c:Ljava/lang/String;

    .line 58
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanf;->d:Ljava/lang/String;

    .line 59
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanf;->e:Ljava/lang/String;

    .line 60
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    iput-object v0, p0, Lanf;->f:Lajx;

    .line 61
    iput-object p4, p0, Lanf;->k:Laol;

    .line 62
    const-class v0, Lanf$b;

    invoke-virtual {p0, v0, p0}, Lanf;->a(Ljava/lang/Class;Lts$b;)V

    .line 63
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    check-cast p1, Lanf$b;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iput-object p1, p0, Lanf;->b:Lbkt;

    iget-object v2, p0, Lanf;->c:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const-string v3, "verifyPhoneNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lanf;->b:Lbkt;

    invoke-virtual {v0}, Lbkt;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lanf$b;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {}, Lajx;->bq()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lanf;->a:Z

    :cond_2
    invoke-static {v0}, Lajx;->v(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanf;->k:Laol;

    iget-object v1, p1, Lanf$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Laol;->a(Ljava/util/List;)I

    :cond_3
    invoke-virtual {p1}, Lanf$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lbkt;

    invoke-direct {v1}, Lbkt;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbkt;->a(Ljava/lang/Boolean;)Lbkt;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c01c2

    invoke-static {v2, v3, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbkt;->a(Ljava/lang/String;)Lbkt;

    move-result-object v0

    iput-object v0, p0, Lanf;->b:Lbkt;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x63fffbe2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 88
    new-instance v0, Lanf$a;

    invoke-direct {v0, p0}, Lanf$a;-><init>(Lanf;)V

    iget-object v1, p0, Lanf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanf$a;->a(Ljava/lang/String;)Lbks;

    move-result-object v0

    iget-object v1, p0, Lanf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbks;->b(Ljava/lang/String;)Lbks;

    move-result-object v0

    iget-object v1, p0, Lanf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbks;->i(Ljava/lang/String;)Lbks;

    move-result-object v0

    invoke-static {v0}, Lanf;->a(Lbgy;)Lbgy;

    move-result-object v0

    check-cast v0, Lanf$a;

    .line 95
    iget-object v1, p0, Lanf;->c:Ljava/lang/String;

    const-string v2, "verifyPhoneNumber"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanf;->e:Ljava/lang/String;

    sget-object v2, Lbks$a;->TWO_FA_TYPE:Lbks$a;

    iget-object v2, v2, Lbks$a;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanf$a;->j(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lanf;->g:Laya;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lanf$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lanf$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Laya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanf$a;->k(Ljava/lang/String;)V

    .line 103
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanf$a;->l(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-object v0

    .line 104
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null deviceTokenAndSignaturePair"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "/bq/phone_verify"

    return-object v0
.end method
