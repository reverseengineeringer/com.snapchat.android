.class final Lbql$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lbql;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lbql;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lbql$a;->a:Lbql;

    .line 133
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    sget-object v0, Lbqe;->a:Landroid/os/Handler;

    new-instance v1, Lbql$a$1;

    invoke-direct {v1, p0, p1}, Lbql$a$1;-><init>(Lbql$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lbql$a;->a:Lbql;

    iget-wide v2, v0, Lbql;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->d:J

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lbql$a;->a:Lbql;

    iget-wide v2, v0, Lbql;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->e:J

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lbql$a;->a:Lbql;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lbql;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbql;->m:I

    iget-wide v4, v0, Lbql;->g:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->g:J

    iget v1, v0, Lbql;->m:I

    iget-wide v2, v0, Lbql;->g:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->j:J

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lbql$a;->a:Lbql;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lbql;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbql;->n:I

    iget-wide v4, v0, Lbql;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->h:J

    iget v1, v0, Lbql;->m:I

    iget-wide v2, v0, Lbql;->h:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lbql;->k:J

    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v1, p0, Lbql$a;->a:Lbql;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget v2, v1, Lbql;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lbql;->l:I

    iget-wide v2, v1, Lbql;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lbql;->f:J

    iget v0, v1, Lbql;->l:I

    iget-wide v2, v1, Lbql;->f:J

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, v1, Lbql;->i:J

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
