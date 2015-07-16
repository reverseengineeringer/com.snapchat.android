.class final Laga$2;
.super Lqg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laga;->a(Lagf;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lqg$a;Lil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/FriendAction;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lagf;

.field final synthetic d:Laga;


# direct methods
.method constructor <init>(Laga;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/model/FriendAction$BlockReason;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Lagf;)V
    .locals 10

    .prologue
    .line 529
    iput-object p1, p0, Laga$2;->d:Laga;

    move-object/from16 v0, p9

    iput-object v0, p0, Laga$2;->a:Lcom/snapchat/android/model/FriendAction;

    move-object/from16 v0, p10

    iput-object v0, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    move-object/from16 v0, p11

    iput-object v0, p0, Laga$2;->c:Lagf;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lqg;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    return-void
.end method


# virtual methods
.method protected final a(Lbli;Lakp;)V
    .locals 3
    .param p2    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lakp;)V

    .line 576
    iget-object v0, p0, Laga$2;->d:Laga;

    iget-object v1, p0, Laga$2;->a:Lcom/snapchat/android/model/FriendAction;

    iget-object v2, p0, Laga$2;->d:Laga;

    invoke-virtual {v2}, Laga;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Laga;->b(Lcom/snapchat/android/model/FriendAction;Z)V

    .line 579
    iget-object v0, p0, Laga$2;->c:Lagf;

    new-instance v1, Laga$2$1;

    invoke-direct {v1, p0}, Laga$2$1;-><init>(Laga$2;)V

    invoke-virtual {v0, v1}, Lagf;->a(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method public final a(Lbli;Lus;)V
    .locals 2
    .param p1    # Lbli;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 554
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lus;)V

    .line 556
    sget-object v0, Laga$3;->a:[I

    iget-object v1, p0, Laga$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iget-object v0, p0, Laga$2;->d:Laga;

    invoke-static {v0}, Laga;->a(Laga;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Laga$2;->c:Lagf;

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lagf;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v0, p0, Laga$2;->d:Laga;

    invoke-static {v0}, Laga;->b(Laga;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Laga$2;->c:Lagf;

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lagf;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final execute()V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Laga$3;->a:[I

    iget-object v1, p0, Laga$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 547
    :goto_0
    invoke-super {p0}, Lqg;->execute()V

    .line 548
    return-void

    .line 534
    :pswitch_0
    iget-object v0, p0, Laga$2;->d:Laga;

    invoke-static {v0}, Laga;->a(Laga;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Laga$2;->c:Lagf;

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lagf;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 541
    :pswitch_1
    iget-object v0, p0, Laga$2;->d:Laga;

    invoke-static {v0}, Laga;->b(Laga;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Laga$2;->c:Lagf;

    iget-object v1, p0, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lagf;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
