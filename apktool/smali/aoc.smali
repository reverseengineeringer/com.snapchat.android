.class public final Laoc;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc$b;,
        Laoc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Laoc$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lblu;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lakr;

.field private g:Layy;

.field private k:Laph;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Layy;->a()Layy;

    move-result-object v1

    invoke-static {}, Laph;->a()Laph;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Laoc;-><init>(Landroid/content/Intent;Lakr;Layy;Laph;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Layy;Laph;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 55
    iput-object p2, p0, Laoc;->f:Lakr;

    .line 56
    iput-object p3, p0, Laoc;->g:Layy;

    .line 57
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc;->c:Ljava/lang/String;

    .line 58
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc;->d:Ljava/lang/String;

    .line 59
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc;->e:Ljava/lang/String;

    .line 60
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    iput-object v0, p0, Laoc;->f:Lakr;

    .line 61
    iput-object p4, p0, Laoc;->k:Laph;

    .line 62
    const-class v0, Laoc$b;

    invoke-virtual {p0, v0, p0}, Laoc;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 63
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 88
    new-instance v0, Laoc$a;

    invoke-direct {v0, p0}, Laoc$a;-><init>(Laoc;)V

    iget-object v1, p0, Laoc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc$a;->a(Ljava/lang/String;)Lblt;

    move-result-object v0

    iget-object v1, p0, Laoc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lblt;->b(Ljava/lang/String;)Lblt;

    move-result-object v0

    iget-object v1, p0, Laoc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lblt;->i(Ljava/lang/String;)Lblt;

    move-result-object v0

    invoke-static {v0}, Laoc;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    check-cast v0, Laoc$a;

    .line 95
    iget-object v1, p0, Laoc;->c:Ljava/lang/String;

    const-string v2, "verifyPhoneNumber"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc;->e:Ljava/lang/String;

    sget-object v2, Lblt$a;->TWO_FA_TYPE:Lblt$a;

    iget-object v2, v2, Lblt$a;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc$a;->j(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Laoc;->g:Layy;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Laoc$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Laoc$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Layy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc$a;->k(Ljava/lang/String;)V

    .line 103
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc$a;->l(Ljava/lang/String;)V

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

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "/bq/phone_verify"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    check-cast p1, Laoc$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iput-object p1, p0, Laoc;->b:Lblu;

    iget-object v2, p0, Laoc;->c:Ljava/lang/String;

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
    iget-object v0, p0, Laoc;->b:Lblu;

    invoke-virtual {v0}, Lblu;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laoc$b;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {}, Lakr;->bn()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc;->a:Z

    :cond_2
    invoke-static {v0}, Lakr;->u(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Laoc;->k:Laph;

    iget-object v1, p1, Laoc$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Laph;->a(Ljava/util/List;)I

    :cond_3
    invoke-virtual {p1}, Laoc$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lblu;

    invoke-direct {v1}, Lblu;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lblu;->a(Ljava/lang/Boolean;)Lblu;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c01c2

    invoke-static {v2, v3, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lblu;->a(Ljava/lang/String;)Lblu;

    move-result-object v0

    iput-object v0, p0, Laoc;->b:Lblu;

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
