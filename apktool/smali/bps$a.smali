.class final Lbps$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lbps;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lbps;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    iput-object p2, p0, Lbps$a;->a:Lbps;

    .line 476
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 479
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 529
    :pswitch_0
    sget-object v0, Lbqe;->a:Landroid/os/Handler;

    new-instance v1, Lbps$a$1;

    invoke-direct {v1, p0, p1}, Lbps$a$1;-><init>(Lbps$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 481
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbpk;

    .line 482
    iget-object v1, p0, Lbps$a;->a:Lbps;

    invoke-virtual {v1, v0, v2}, Lbps;->a(Lbpk;Z)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbpk;

    .line 487
    iget-object v2, p0, Lbps$a;->a:Lbps;

    iget-object v3, v0, Lbpk;->i:Ljava/lang/String;

    iget-object v1, v2, Lbps;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpm;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lbpm;->a(Lbpk;)V

    invoke-virtual {v1}, Lbpm;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lbps;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lbpk;->a:Lbqe;

    iget-boolean v1, v1, Lbqe;->o:Z

    if-eqz v1, :cond_1

    const-string v1, "Dispatcher"

    const-string v3, "canceled"

    iget-object v4, v0, Lbpk;->b:Lbqh;

    invoke-virtual {v4}, Lbqh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v2, Lbps;->h:Ljava/util/Set;

    iget-object v3, v0, Lbpk;->j:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lbps;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lbpk;->a:Lbqe;

    iget-boolean v1, v1, Lbqe;->o:Z

    if-eqz v1, :cond_2

    const-string v1, "Dispatcher"

    const-string v3, "canceled"

    iget-object v4, v0, Lbpk;->b:Lbqh;

    invoke-virtual {v4}, Lbqh;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "because paused request got canceled"

    invoke-static {v1, v3, v4, v5}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v2, Lbps;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbpk;->a:Lbqe;

    iget-boolean v1, v1, Lbqe;->o:Z

    if-eqz v1, :cond_0

    const-string v1, "Dispatcher"

    const-string v2, "canceled"

    iget-object v0, v0, Lbpk;->b:Lbqh;

    invoke-virtual {v0}, Lbqh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "from replaying"

    invoke-static {v1, v2, v0, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v6, p0, Lbps$a;->a:Lbps;

    iget-object v0, v6, Lbps;->h:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lbps;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpm;

    iget-object v1, v0, Lbpm;->b:Lbqe;

    iget-boolean v8, v1, Lbqe;->o:Z

    iget-object v4, v0, Lbpm;->k:Lbpk;

    iget-object v9, v0, Lbpm;->l:Ljava/util/List;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    :cond_4
    if-eqz v4, :cond_5

    iget-object v10, v4, Lbpk;->j:Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v0, v4}, Lbpm;->a(Lbpk;)V

    iget-object v10, v6, Lbps;->g:Ljava/util/Map;

    invoke-virtual {v4}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_5

    const-string v10, "Dispatcher"

    const-string v11, "paused"

    iget-object v4, v4, Lbpk;->b:Lbqh;

    invoke-virtual {v4}, Lbqh;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "because tag \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' was paused"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v4, v12}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_8

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbpk;

    iget-object v10, v1, Lbpk;->j:Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v0, v1}, Lbpm;->a(Lbpk;)V

    iget-object v10, v6, Lbps;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_6

    const-string v10, "Dispatcher"

    const-string v11, "paused"

    iget-object v1, v1, Lbpk;->b:Lbqh;

    invoke-virtual {v1}, Lbqh;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "because tag \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' was paused"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v1, v12}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    :cond_7
    move v1, v3

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lbpm;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    if-eqz v8, :cond_3

    const-string v1, "Dispatcher"

    const-string v4, "canceled"

    invoke-static {v0}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "all actions paused"

    invoke-static {v1, v4, v0, v8}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 496
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lbps$a;->a:Lbps;

    invoke-virtual {v1, v0}, Lbps;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 501
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbpm;

    .line 502
    iget-object v1, p0, Lbps$a;->a:Lbps;

    iget v2, v0, Lbpm;->h:I

    invoke-static {v2}, Lbqa;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lbps;->k:Lbpn;

    iget-object v3, v0, Lbpm;->f:Ljava/lang/String;

    iget-object v4, v0, Lbpm;->m:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4}, Lbpn;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_9
    iget-object v2, v1, Lbps;->e:Ljava/util/Map;

    iget-object v3, v0, Lbpm;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lbps;->d(Lbpm;)V

    iget-object v1, v0, Lbpm;->b:Lbqe;

    iget-boolean v1, v1, Lbqe;->o:Z

    if-eqz v1, :cond_0

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v0}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "for completion"

    invoke-static {v1, v2, v0, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbpm;

    .line 507
    iget-object v1, p0, Lbps$a;->a:Lbps;

    invoke-virtual {v1, v0}, Lbps;->c(Lbpm;)V

    goto/16 :goto_0

    .line 511
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbpm;

    .line 512
    iget-object v1, p0, Lbps$a;->a:Lbps;

    invoke-virtual {v1, v0, v3}, Lbps;->a(Lbpm;Z)V

    goto/16 :goto_0

    .line 516
    :pswitch_8
    iget-object v0, p0, Lbps$a;->a:Lbps;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lbps;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lbps;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lbps;->j:Landroid/os/Handler;

    iget-object v0, v0, Lbps;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v1}, Lbps;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 520
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 521
    iget-object v1, p0, Lbps$a;->a:Lbps;

    invoke-virtual {v1, v0}, Lbps;->a(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 525
    :pswitch_a
    iget-object v1, p0, Lbps$a;->a:Lbps;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a

    move v0, v2

    :goto_4
    iput-boolean v0, v1, Lbps;->p:Z

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_4

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
