.class final Lbpd$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_6

    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbol;

    .line 117
    iget-object v8, v1, Lbol;->b:Lbpd;

    iget-object v9, v1, Lbol;->k:Lboj;

    iget-object v10, v1, Lbol;->l:Ljava/util/List;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v5, v4

    :goto_1
    if-nez v9, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, v1, Lbol;->g:Lbpg;

    iget-object v3, v3, Lbpg;->d:Landroid/net/Uri;

    iget-object v3, v1, Lbol;->p:Ljava/lang/Exception;

    iget-object v11, v1, Lbol;->m:Landroid/graphics/Bitmap;

    iget-object v12, v1, Lbol;->o:Lbpd$d;

    if-eqz v9, :cond_1

    invoke-virtual {v8, v11, v12, v9}, Lbpd;->a(Landroid/graphics/Bitmap;Lbpd$d;Lboj;)V

    :cond_1
    if-eqz v5, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_4

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lboj;

    invoke-virtual {v8, v11, v12, v1}, Lbpd;->a(Landroid/graphics/Bitmap;Lbpd$d;Lboj;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    .line 115
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 122
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lboj;

    .line 123
    iget-object v1, v0, Lboj;->a:Lbpd;

    iget-boolean v1, v1, Lbpd;->o:Z

    if-eqz v1, :cond_5

    .line 124
    const-string v1, "Main"

    const-string v2, "canceled"

    iget-object v3, v0, Lboj;->b:Lbpg;

    invoke-virtual {v3}, Lbpg;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "target got garbage collected"

    invoke-static {v1, v2, v3, v4}, Lbpo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_5
    iget-object v1, v0, Lboj;->a:Lbpd;

    invoke-virtual {v0}, Lboj;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lbpd;->a(Lbpd;Ljava/lang/Object;)V

    .line 136
    :cond_6
    return-void

    .line 130
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_6

    .line 133
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lboj;

    .line 134
    iget-object v5, v1, Lboj;->a:Lbpd;

    const/4 v2, 0x0

    iget v6, v1, Lboj;->e:I

    invoke-static {v6}, Lboz;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v2, v1, Lboj;->i:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lbpd;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_9

    sget-object v6, Lbpd$d;->a:Lbpd$d;

    invoke-virtual {v5, v2, v6, v1}, Lbpd;->a(Landroid/graphics/Bitmap;Lbpd$d;Lboj;)V

    iget-boolean v2, v5, Lbpd;->o:Z

    if-eqz v2, :cond_8

    const-string v2, "Main"

    const-string v5, "completed"

    iget-object v1, v1, Lboj;->b:Lbpg;

    invoke-virtual {v1}, Lbpg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lbpd$d;->a:Lbpd$d;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v1, v6}, Lbpo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_8
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 134
    :cond_9
    invoke-virtual {v5, v1}, Lbpd;->a(Lboj;)V

    iget-boolean v2, v5, Lbpd;->o:Z

    if-eqz v2, :cond_8

    const-string v2, "Main"

    const-string v5, "resumed"

    iget-object v1, v1, Lboj;->b:Lbpg;

    invoke-virtual {v1}, Lbpg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lbpo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method
