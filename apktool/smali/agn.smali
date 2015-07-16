.class public final Lagn;
.super Lage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagn$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lage;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 23
    if-nez p2, :cond_0

    .line 24
    const-string v0, ""

    .line 41
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lagn$1;->a:[I

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {p0, p1}, Lagn;->b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0c000c

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0c000b

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lajp;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajp;

    if-eqz v0, :cond_3

    iget v0, v0, Lajp;->mScore:I

    invoke-static {v0}, Lauy;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v0, v1, v5

    const v0, 0x7f0c02d0

    invoke-static {v4, v0, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const v0, 0x7f0c0040

    invoke-static {v4, v0, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0c015d

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 41
    :cond_5
    invoke-super {p0, p1, p2}, Lage;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
