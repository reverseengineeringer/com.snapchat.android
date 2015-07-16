.class public final Lanz;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanz$c;,
        Lanz$b;,
        Lanz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lanz$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lanz$c;

.field final c:Layy;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lakr;

.field private final g:Laph;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Layy;->a()Layy;

    move-result-object v1

    invoke-static {}, Laph;->a()Laph;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lanz;-><init>(Landroid/content/Intent;Lakr;Layy;Laph;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Layy;Laph;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 66
    iput-object p2, p0, Lanz;->f:Lakr;

    .line 67
    iput-object p3, p0, Lanz;->c:Layy;

    .line 68
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanz;->a:Ljava/lang/String;

    .line 69
    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanz;->d:Ljava/lang/String;

    .line 70
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanz;->e:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lanz;->g:Laph;

    .line 72
    const-class v0, Lanz$b;

    invoke-virtual {p0, v0, p0}, Lanz;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lanz$a;

    iget-object v1, p0, Lanz;->a:Ljava/lang/String;

    iget-object v2, p0, Lanz;->d:Ljava/lang/String;

    iget-object v3, p0, Lanz;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lanz$a;-><init>(Lanz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "/ph/settings"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    check-cast p1, Lanz$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Lanz$c;

    iget-boolean v1, p1, Lanz$b;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lanz;->a:Ljava/lang/String;

    iget-object v4, p0, Lanz;->d:Ljava/lang/String;

    iget-object v5, p1, Lanz$b;->b:Ljava/lang/String;

    iget-object v6, p1, Lanz$b;->c:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lanz$c;-><init>(Lanz;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lanz;->b:Lanz$c;

    :goto_0
    iget-object v1, p0, Lanz;->b:Lanz$c;

    iget-object v2, p0, Lanz;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v0, Lanz$c;

    iget-object v3, p0, Lanz;->a:Ljava/lang/String;

    iget-object v4, p0, Lanz;->d:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    const v2, 0x7f0c01c2

    invoke-static {v6, v2, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v0 .. v6}, Lanz$c;-><init>(Lanz;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lanz;->b:Lanz$c;

    goto :goto_0

    :sswitch_0
    const-string v3, "pwConfirmPhoneNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_1
    const-string v3, "verifyEmail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_2
    const-string v3, "disableTwoFA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "twoFAForgetDevice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "enableTwoFA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "sendTwoFACode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "twoFAForgetOneDevice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_0
    iget-boolean v0, v1, Lanz$c;->a:Z

    invoke-static {v0}, Lakr;->t(Z)V

    goto :goto_2

    :pswitch_1
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->u(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v7}, Lakr;->u(Z)V

    iget-object v0, p0, Lanz;->g:Laph;

    invoke-virtual {v0}, Laph;->c()I

    goto/16 :goto_2

    :pswitch_3
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanz;->g:Laph;

    invoke-virtual {v0}, Laph;->c()I

    goto/16 :goto_2

    :pswitch_4
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    invoke-static {v8}, Lakr;->u(Z)V

    iget-object v0, p0, Lanz;->g:Laph;

    iget-object v1, v1, Lanz$c;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Laph;->a(Ljava/util/List;)I

    goto/16 :goto_2

    :pswitch_5
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lanz$c;->d:Ljava/lang/String;

    invoke-static {v0}, Lakr;->v(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    iget-boolean v0, v1, Lanz$c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanz;->g:Laph;

    iget-object v1, p0, Lanz;->d:Ljava/lang/String;

    iget-object v2, v0, Laph;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x408

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "action"

    sget-object v4, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->DELETE:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "device_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Laph;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7591c95d -> :sswitch_1
        -0x55c3b3bc -> :sswitch_4
        -0x3b5d1a01 -> :sswitch_2
        -0xffd8814 -> :sswitch_5
        0x1b484de8 -> :sswitch_6
        0x37c6f04a -> :sswitch_3
        0x5432b9de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
