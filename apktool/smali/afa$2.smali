.class final Lafa$2;
.super Lpp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafa;->a(Laff;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lpp$a;Lic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/FriendAction;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Laff;

.field final synthetic d:Lafa;


# direct methods
.method constructor <init>(Lafa;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/model/FriendAction$BlockReason;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Laff;)V
    .locals 10

    .prologue
    .line 446
    iput-object p1, p0, Lafa$2;->d:Lafa;

    move-object/from16 v0, p9

    iput-object v0, p0, Lafa$2;->a:Lcom/snapchat/android/model/FriendAction;

    move-object/from16 v0, p10

    iput-object v0, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    move-object/from16 v0, p11

    iput-object v0, p0, Lafa$2;->c:Laff;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lpp;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    return-void
.end method


# virtual methods
.method protected final a(Lbkh;Lajv;)V
    .locals 2
    .param p2    # Lajv;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 492
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Lajv;)V

    .line 495
    iget-object v0, p0, Lafa$2;->c:Laff;

    new-instance v1, Lafa$2$1;

    invoke-direct {v1, p0}, Lafa$2$1;-><init>(Lafa$2;)V

    invoke-virtual {v0, v1}, Laff;->a(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public final a(Lbkh;Luc;)V
    .locals 2
    .param p1    # Lbkh;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Luc;)V

    .line 473
    sget-object v0, Lafa$3;->a:[I

    iget-object v1, p0, Lafa$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget-object v0, p0, Lafa$2;->d:Lafa;

    invoke-static {v0}, Lafa;->a(Lafa;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lafa$2;->c:Laff;

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laff;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v0, p0, Lafa$2;->d:Lafa;

    invoke-static {v0}, Lafa;->b(Lafa;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lafa$2;->c:Laff;

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laff;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 449
    sget-object v0, Lafa$3;->a:[I

    iget-object v1, p0, Lafa$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    invoke-super {p0}, Lpp;->f()V

    .line 465
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lafa$2;->d:Lafa;

    invoke-static {v0}, Lafa;->a(Lafa;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lafa$2;->c:Laff;

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laff;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lafa$2;->d:Lafa;

    invoke-static {v0}, Lafa;->b(Lafa;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lafa$2;->c:Laff;

    iget-object v1, p0, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laff;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
