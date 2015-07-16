.class public final Lbtc;
.super Lbsi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtc$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field c:Lbtc$a;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lbtb;

.field public h:Lbus;

.field public i:Ljava/lang/String;

.field public j:Lbsb;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:[D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lbsi;-><init>()V

    .line 34
    iput-wide v4, p0, Lbtc;->a:J

    .line 35
    iput-wide v4, p0, Lbtc;->k:J

    .line 39
    iput-boolean v1, p0, Lbtc;->l:Z

    .line 40
    iput-boolean v1, p0, Lbtc;->m:Z

    .line 42
    iput-boolean v1, p0, Lbtc;->b:Z

    .line 75
    sget-object v0, Lbtc$a;->a:Lbtc$a;

    iput-object v0, p0, Lbtc;->c:Lbtc$a;

    .line 77
    iput-wide v2, p0, Lbtc;->o:J

    .line 79
    iput-wide v2, p0, Lbtc;->d:J

    .line 81
    iput-boolean v1, p0, Lbtc;->p:Z

    .line 82
    iput-boolean v1, p0, Lbtc;->q:Z

    .line 84
    iput v1, p0, Lbtc;->e:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lbtc;->f:Ljava/lang/String;

    .line 88
    sget-object v0, Lbtb;->a:Lbtb;

    iput-object v0, p0, Lbtc;->g:Lbtb;

    .line 96
    new-instance v0, Lbus;

    invoke-direct {v0}, Lbus;-><init>()V

    iput-object v0, p0, Lbtc;->h:Lbus;

    .line 105
    sget-object v0, Lbsb;->a:Lbsb;

    iput-object v0, p0, Lbtc;->j:Lbsb;

    .line 154
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtc;->n:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lbsi;-><init>()V

    .line 34
    iput-wide v4, p0, Lbtc;->a:J

    .line 35
    iput-wide v4, p0, Lbtc;->k:J

    .line 39
    iput-boolean v1, p0, Lbtc;->l:Z

    .line 40
    iput-boolean v1, p0, Lbtc;->m:Z

    .line 42
    iput-boolean v1, p0, Lbtc;->b:Z

    .line 75
    sget-object v0, Lbtc$a;->a:Lbtc$a;

    iput-object v0, p0, Lbtc;->c:Lbtc$a;

    .line 77
    iput-wide v2, p0, Lbtc;->o:J

    .line 79
    iput-wide v2, p0, Lbtc;->d:J

    .line 81
    iput-boolean v1, p0, Lbtc;->p:Z

    .line 82
    iput-boolean v1, p0, Lbtc;->q:Z

    .line 84
    iput v1, p0, Lbtc;->e:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lbtc;->f:Ljava/lang/String;

    .line 88
    sget-object v0, Lbtb;->a:Lbtb;

    iput-object v0, p0, Lbtc;->g:Lbtb;

    .line 96
    new-instance v0, Lbus;

    invoke-direct {v0}, Lbus;-><init>()V

    iput-object v0, p0, Lbtc;->h:Lbus;

    .line 105
    sget-object v0, Lbsb;->a:Lbsb;

    iput-object v0, p0, Lbtc;->j:Lbsb;

    .line 158
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtc;->n:Ljava/lang/String;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lbtc;->i:Ljava/lang/String;

    .line 162
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Lbsi;-><init>()V

    .line 34
    iput-wide v4, p0, Lbtc;->a:J

    .line 35
    iput-wide v4, p0, Lbtc;->k:J

    .line 39
    iput-boolean v1, p0, Lbtc;->l:Z

    .line 40
    iput-boolean v1, p0, Lbtc;->m:Z

    .line 42
    iput-boolean v1, p0, Lbtc;->b:Z

    .line 75
    sget-object v0, Lbtc$a;->a:Lbtc$a;

    iput-object v0, p0, Lbtc;->c:Lbtc$a;

    .line 77
    iput-wide v2, p0, Lbtc;->o:J

    .line 79
    iput-wide v2, p0, Lbtc;->d:J

    .line 81
    iput-boolean v1, p0, Lbtc;->p:Z

    .line 82
    iput-boolean v1, p0, Lbtc;->q:Z

    .line 84
    iput v1, p0, Lbtc;->e:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lbtc;->f:Ljava/lang/String;

    .line 88
    sget-object v0, Lbtb;->a:Lbtb;

    iput-object v0, p0, Lbtc;->g:Lbtb;

    .line 96
    new-instance v0, Lbus;

    invoke-direct {v0}, Lbus;-><init>()V

    iput-object v0, p0, Lbtc;->h:Lbus;

    .line 105
    sget-object v0, Lbsb;->a:Lbsb;

    iput-object v0, p0, Lbtc;->j:Lbsb;

    .line 165
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtc;->n:Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtc;->i:Ljava/lang/String;

    .line 169
    :cond_0
    return-void
.end method

.method private g()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 245
    .line 247
    iget-wide v2, p0, Lbtc;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lbtc;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 248
    iget-wide v0, p0, Lbtc;->k:J

    iget-wide v2, p0, Lbtc;->a:J

    sub-long/2addr v0, v2

    .line 251
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v6, p0, Lbtc;->i:Ljava/lang/String;

    .line 228
    if-nez v6, :cond_1

    .line 229
    iget-object v8, p0, Lbtc;->h:Lbus;

    const-string v0, "unknown-host"

    iget-object v3, v8, Lbus;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v8, Lbus;->b:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    iget-boolean v0, v8, Lbus;->f:Z

    if-eqz v0, :cond_3

    iget v0, v8, Lbus;->e:I

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    :cond_0
    :goto_1
    iput-object v6, p0, Lbtc;->i:Ljava/lang/String;

    .line 233
    :cond_1
    return-object v6

    .line 229
    :cond_2
    iget-object v3, v8, Lbus;->a:Ljava/net/InetAddress;

    if-eqz v3, :cond_c

    iget-object v0, v8, Lbus;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_3
    iget-object v0, v8, Lbus;->c:Ljava/lang/String;

    const-string v7, ""

    if-eqz v0, :cond_5

    const-string v3, "http:"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    move-object v6, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, v8, Lbus;->d:Lbus$a;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lbus;->d:Lbus$a;

    invoke-static {v2}, Lbus$a;->a(Lbus$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    const-string v1, ""

    iget v2, v8, Lbus;->e:I

    if-lez v2, :cond_a

    iget-object v2, v8, Lbus;->d:Lbus$a;

    if-eqz v2, :cond_9

    iget-object v2, v8, Lbus;->d:Lbus$a;

    invoke-static {v2}, Lbus$a;->b(Lbus$a;)I

    move-result v2

    iget v4, v8, Lbus;->e:I

    if-eq v2, v4, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lbus;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v1, v2

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    move-object v1, v7

    goto/16 :goto_3

    :cond_c
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lbtc;->h:Lbus;

    if-lez p1, :cond_0

    iput p1, v0, Lbus;->e:I

    .line 421
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 192
    iget-boolean v0, p0, Lbtc;->p:Z

    if-nez v0, :cond_0

    .line 193
    iget-wide v0, p0, Lbtc;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbtc;->o:J

    .line 195
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 293
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lbtc;->r:[D

    .line 297
    return-void
.end method

.method public final a(Lbus$a;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lbtc;->h:Lbus;

    iput-object p1, v0, Lbus;->d:Lbus$a;

    .line 410
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lbtc;->e()Lorg/json/JSONArray;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 431
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lbtc;->i:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lbtc;->h:Lbus;

    iput-object p1, v0, Lbus;->b:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public final a(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lbtc;->i:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lbtc;->h:Lbus;

    iput-object p1, v0, Lbus;->a:Ljava/net/InetAddress;

    .line 388
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lbtc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtc;->p:Z

    .line 199
    iput-wide p1, p0, Lbtc;->o:J

    .line 201
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 264
    iget-boolean v0, p0, Lbtc;->l:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbtc;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbtc;->a:J

    .line 267
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lbtc;->q:Z

    if-nez v0, :cond_0

    .line 209
    iget-wide v0, p0, Lbtc;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbtc;->d:J

    .line 211
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 275
    iget-boolean v0, p0, Lbtc;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lbtc;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbtc;->k:J

    .line 278
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtc;->q:Z

    .line 215
    iput-wide p1, p0, Lbtc;->d:J

    .line 216
    return-void
.end method

.method public final e()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 346
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 348
    :try_start_0
    iget-object v1, p0, Lbtc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 353
    invoke-virtual {p0}, Lbtc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 354
    sget-object v1, Lbuk;->a:Lbuk;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lbtc;->a:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lbuk;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 355
    invoke-direct {p0}, Lbtc;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 356
    iget-object v1, p0, Lbtc;->j:Lbsb;

    iget v1, v1, Lbsb;->e:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 357
    iget-wide v2, p0, Lbtc;->o:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 358
    iget-wide v2, p0, Lbtc;->d:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 359
    iget v1, p0, Lbtc;->e:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 360
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 361
    iget-object v1, p0, Lbtc;->g:Lbtb;

    iget v1, v1, Lbtb;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 362
    iget-object v1, p0, Lbtc;->r:[D

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 364
    iget-object v2, p0, Lbtc;->r:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 365
    iget-object v2, p0, Lbtc;->r:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 366
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 368
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create statsArray"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x0

    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final e(J)V
    .locals 1

    .prologue
    .line 259
    iput-wide p1, p0, Lbtc;->a:J

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtc;->l:Z

    .line 261
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lbtc;->h:Lbus;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbus;->f:Z

    .line 448
    return-void
.end method

.method public final f(J)V
    .locals 1

    .prologue
    .line 270
    iput-wide p1, p0, Lbtc;->k:J

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtc;->m:Z

    .line 272
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    const-string v0, ""

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI Builder    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->h:Lbus;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Logged by      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->c:Lbtc$a;

    invoke-virtual {v1}, Lbtc$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->g:Lbtb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response time  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lbtc;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Start time     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtc;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "End time       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtc;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes out    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtc;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes in     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbtc;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response code  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbtc;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Request method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lbtc;->r:[D

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbtc;->r:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    return-object v0
.end method
