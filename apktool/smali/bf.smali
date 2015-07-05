.class public Lbf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbj;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbj;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lbo;

.field d:Z

.field private final e:Lbk;

.field private f:J

.field private g:Lbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbk;Lbo;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbf;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lbf;->b:Ljava/util/Set;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbf;->f:J

    .line 35
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Lbf;->g:Lbh;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf;->d:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clock is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springLooper is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lbf;->e:Lbk;

    .line 52
    iput-object p2, p0, Lbf;->c:Lbo;

    .line 53
    iget-object v0, p0, Lbf;->c:Lbo;

    invoke-virtual {v0, p0}, Lbo;->a(Lbf;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Lbj;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lbj;

    invoke-direct {v0, p0}, Lbj;-><init>(Lbf;)V

    .line 70
    iget-object v1, p0, Lbf;->a:Ljava/util/Map;

    iget-object v2, v0, Lbj;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lbf;->a:Ljava/util/Map;

    iget-object v2, v0, Lbj;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0
.end method

.method public final b()V
    .locals 36

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbf;->f:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 151
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lbf;->f:J

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lbf;->f:J

    sub-long v12, v2, v4

    .line 154
    move-object/from16 v0, p0

    iput-wide v2, v0, Lbf;->f:J

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->g:Lbh;

    invoke-virtual {v2}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lbj;

    invoke-virtual {v3}, Lbj;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v3, Lbj;->i:Z

    if-nez v2, :cond_7

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_10

    long-to-double v4, v12

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3}, Lbj;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v6, v3, Lbj;->i:Z

    if-nez v6, :cond_2

    :cond_4
    const-wide v6, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5

    const-wide v4, 0x3fb0624dd2f1a9fcL    # 0.064

    :cond_5
    iget-wide v6, v3, Lbj;->k:D

    add-double/2addr v4, v6

    iput-wide v4, v3, Lbj;->k:D

    iget-object v4, v3, Lbj;->a:Lbl;

    iget-wide v0, v4, Lbl;->b:D

    move-wide/from16 v16, v0

    iget-object v4, v3, Lbj;->a:Lbl;

    iget-wide v0, v4, Lbl;->a:D

    move-wide/from16 v18, v0

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iget-wide v10, v4, Lbj$a;->a:D

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iget-wide v8, v4, Lbj$a;->b:D

    iget-object v4, v3, Lbj;->f:Lbj$a;

    iget-wide v6, v4, Lbj$a;->a:D

    iget-object v4, v3, Lbj;->f:Lbj$a;

    iget-wide v4, v4, Lbj$a;->b:D

    :goto_3
    iget-wide v0, v3, Lbj;->k:D

    move-wide/from16 v20, v0

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v15, v20, v22

    if-ltz v15, :cond_8

    iget-wide v4, v3, Lbj;->k:D

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double v4, v4, v20

    iput-wide v4, v3, Lbj;->k:D

    iget-wide v4, v3, Lbj;->k:D

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v20

    if-gez v4, :cond_6

    iget-object v4, v3, Lbj;->e:Lbj$a;

    iput-wide v10, v4, Lbj$a;->a:D

    iget-object v4, v3, Lbj;->e:Lbj$a;

    iput-wide v8, v4, Lbj$a;->b:D

    :cond_6
    iget-wide v4, v3, Lbj;->h:D

    sub-double/2addr v4, v6

    mul-double v4, v4, v16

    mul-double v6, v18, v8

    sub-double v20, v4, v6

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v4, v8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v6, v6, v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v22

    add-double v22, v8, v6

    iget-wide v6, v3, Lbj;->h:D

    sub-double v4, v6, v4

    mul-double v4, v4, v16

    mul-double v6, v18, v22

    sub-double v24, v4, v6

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v4, v4, v22

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v6, v6, v24

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v26

    add-double v26, v8, v6

    iget-wide v6, v3, Lbj;->h:D

    sub-double v4, v6, v4

    mul-double v4, v4, v16

    mul-double v6, v18, v26

    sub-double v28, v4, v6

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v4, v4, v26

    add-double v6, v10, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v4, v4, v28

    add-double/2addr v4, v8

    iget-wide v0, v3, Lbj;->h:D

    move-wide/from16 v30, v0

    sub-double v30, v30, v6

    mul-double v30, v30, v16

    mul-double v32, v18, v4

    sub-double v30, v30, v32

    const-wide v32, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    add-double v22, v22, v26

    mul-double v22, v22, v34

    add-double v22, v22, v8

    add-double v22, v22, v4

    mul-double v22, v22, v32

    const-wide v26, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    add-double v24, v24, v28

    mul-double v24, v24, v32

    add-double v20, v20, v24

    add-double v20, v20, v30

    mul-double v20, v20, v26

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v22, v22, v24

    add-double v10, v10, v22

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v20, v20, v22

    add-double v8, v8, v20

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    iget-object v15, v3, Lbj;->f:Lbj$a;

    iput-wide v6, v15, Lbj$a;->a:D

    iget-object v6, v3, Lbj;->f:Lbj$a;

    iput-wide v4, v6, Lbj$a;->b:D

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iput-wide v10, v4, Lbj$a;->a:D

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iput-wide v8, v4, Lbj$a;->b:D

    iget-wide v4, v3, Lbj;->k:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9

    iget-wide v4, v3, Lbj;->k:D

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    div-double/2addr v4, v6

    iget-object v6, v3, Lbj;->d:Lbj$a;

    iget-object v7, v3, Lbj;->d:Lbj$a;

    iget-wide v8, v7, Lbj$a;->a:D

    mul-double/2addr v8, v4

    iget-object v7, v3, Lbj;->e:Lbj$a;

    iget-wide v10, v7, Lbj$a;->a:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v4

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iput-wide v8, v6, Lbj$a;->a:D

    iget-object v6, v3, Lbj;->d:Lbj$a;

    iget-object v7, v3, Lbj;->d:Lbj$a;

    iget-wide v8, v7, Lbj$a;->b:D

    mul-double/2addr v8, v4

    iget-object v7, v3, Lbj;->e:Lbj$a;

    iget-wide v10, v7, Lbj$a;->b:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v4, v16, v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    iput-wide v4, v6, Lbj$a;->b:D

    :cond_9
    invoke-virtual {v3}, Lbj;->b()Z

    move-result v4

    if-nez v4, :cond_c

    iget-boolean v4, v3, Lbj;->b:Z

    if-eqz v4, :cond_16

    iget-wide v4, v3, Lbj;->g:D

    iget-wide v6, v3, Lbj;->h:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iget-wide v4, v4, Lbj$a;->a:D

    iget-wide v6, v3, Lbj;->h:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_b

    :cond_a
    iget-wide v4, v3, Lbj;->g:D

    iget-wide v6, v3, Lbj;->h:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_f

    iget-object v4, v3, Lbj;->d:Lbj$a;

    iget-wide v4, v4, Lbj$a;->a:D

    iget-wide v6, v3, Lbj;->h:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_f

    :cond_b
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_16

    :cond_c
    iget-wide v4, v3, Lbj;->h:D

    iput-wide v4, v3, Lbj;->g:D

    iget-object v2, v3, Lbj;->d:Lbj$a;

    iget-wide v4, v3, Lbj;->h:D

    iput-wide v4, v2, Lbj$a;->a:D

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lbj;->c(D)Lbj;

    const/4 v2, 0x1

    move v4, v2

    :goto_5
    iget-boolean v2, v3, Lbj;->i:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v3, Lbj;->i:Z

    :cond_d
    const/4 v2, 0x0

    if-eqz v4, :cond_15

    const/4 v2, 0x1

    iput-boolean v2, v3, Lbj;->i:Z

    const/4 v2, 0x1

    move v4, v2

    :goto_6
    iget-object v2, v3, Lbj;->j:Lbh;

    invoke-virtual {v2}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbn;

    invoke-interface {v2, v3}, Lbn;->a(Lbj;)V

    if-eqz v4, :cond_e

    invoke-interface {v2}, Lbn;->a()V

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->b:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 160
    :cond_11
    monitor-enter p0

    .line 161
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbf;->d:Z

    .line 163
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lbf;->f:J

    .line 165
    :cond_12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->g:Lbh;

    invoke-virtual {v2}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_8

    .line 165
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 170
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbf;->d:Z

    if-eqz v2, :cond_14

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lbf;->c:Lbo;

    invoke-virtual {v2}, Lbo;->b()V

    .line 173
    :cond_14
    return-void

    :cond_15
    move v4, v2

    goto :goto_6

    :cond_16
    move v4, v2

    goto :goto_5
.end method
