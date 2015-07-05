.class final Lckj$a;
.super Lcgk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final d:I

.field final e:Lckj$d;

.field final f:Lckj$d;


# direct methods
.method constructor <init>(Ljava/lang/String;ILckj$d;Lckj$d;)V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcgk;-><init>(Ljava/lang/String;)V

    .line 1180
    iput p2, p0, Lckj$a;->d:I

    .line 1181
    iput-object p3, p0, Lckj$a;->e:Lckj$d;

    .line 1182
    iput-object p4, p0, Lckj$a;->f:Lckj$d;

    .line 1183
    return-void
.end method

.method private h(J)Lckj$d;
    .locals 7

    .prologue
    .line 1307
    iget v4, p0, Lckj$a;->d:I

    .line 1308
    iget-object v0, p0, Lckj$a;->e:Lckj$d;

    .line 1309
    iget-object v1, p0, Lckj$a;->f:Lckj$d;

    .line 1314
    :try_start_0
    iget v2, v1, Lckj$d;->c:I

    invoke-virtual {v0, p1, p2, v4, v2}, Lckj$d;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1325
    :goto_0
    :try_start_1
    iget v5, v0, Lckj$d;->c:I

    invoke-virtual {v1, p1, p2, v4, v5}, Lckj$d;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide p1

    .line 1335
    :goto_1
    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    :goto_2
    return-object v0

    .line 1318
    :catch_0
    move-exception v2

    move-wide v2, p1

    .line 1322
    goto :goto_0

    .line 1321
    :catch_1
    move-exception v2

    move-wide v2, p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1335
    goto :goto_2

    .line 1332
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1329
    :catch_3
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0, p1, p2}, Lckj$a;->h(J)Lckj$d;

    move-result-object v0

    iget-object v0, v0, Lckj$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)I
    .locals 3

    .prologue
    .line 1190
    iget v0, p0, Lckj$a;->d:I

    invoke-direct {p0, p1, p2}, Lckj$a;->h(J)Lckj$d;

    move-result-object v1

    iget v1, v1, Lckj$d;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1286
    if-ne p0, p1, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return v0

    .line 1289
    :cond_1
    instance-of v2, p1, Lckj$a;

    if-eqz v2, :cond_3

    .line 1290
    check-cast p1, Lckj$a;

    .line 1291
    iget-object v2, p0, Lcgk;->c:Ljava/lang/String;

    iget-object v3, p1, Lcgk;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lckj$a;->d:I

    iget v3, p1, Lckj$a;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lckj$a;->e:Lckj$d;

    iget-object v3, p1, Lckj$a;->e:Lckj$d;

    invoke-virtual {v2, v3}, Lckj$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lckj$a;->f:Lckj$d;

    iget-object v3, p1, Lckj$a;->f:Lckj$d;

    invoke-virtual {v2, v3}, Lckj$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1297
    goto :goto_0
.end method

.method public final f(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1202
    iget v4, p0, Lckj$a;->d:I

    .line 1203
    iget-object v5, p0, Lckj$a;->e:Lckj$d;

    .line 1204
    iget-object v6, p0, Lckj$a;->f:Lckj$d;

    .line 1209
    :try_start_0
    iget v0, v6, Lckj$d;->c:I

    invoke-virtual {v5, p1, p2, v4, v0}, Lckj$d;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1211
    cmp-long v2, p1, v8

    if-lez v2, :cond_0

    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    move-wide v0, p1

    :cond_0
    move-wide v2, v0

    .line 1224
    :goto_0
    :try_start_1
    iget v0, v5, Lckj$d;->c:I

    invoke-virtual {v6, p1, p2, v4, v0}, Lckj$d;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1226
    cmp-long v4, p1, v8

    if-lez v4, :cond_2

    cmp-long v4, v0, v8

    if-gez v4, :cond_2

    :goto_1
    move-wide v0, p1

    .line 1238
    :goto_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_3
    return-wide v0

    .line 1217
    :catch_0
    move-exception v0

    move-wide v2, p1

    .line 1221
    goto :goto_0

    .line 1220
    :catch_1
    move-exception v0

    move-wide v2, p1

    goto :goto_0

    .line 1232
    :catch_2
    move-exception v0

    move-wide v0, p1

    .line 1236
    goto :goto_2

    .line 1235
    :catch_3
    move-exception v0

    move-wide v0, p1

    goto :goto_2

    :cond_1
    move-wide v0, v2

    .line 1238
    goto :goto_3

    :cond_2
    move-wide p1, v0

    goto :goto_1
.end method

.method public final g(J)J
    .locals 9

    .prologue
    .line 1244
    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 1246
    iget v6, p0, Lckj$a;->d:I

    .line 1247
    iget-object v7, p0, Lckj$a;->e:Lckj$d;

    .line 1248
    iget-object v8, p0, Lckj$a;->f:Lckj$d;

    .line 1253
    :try_start_0
    iget v0, v8, Lckj$d;->c:I

    invoke-virtual {v7, v2, v3, v6, v0}, Lckj$d;->b(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 1255
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    move-wide v4, v0

    .line 1268
    :goto_0
    :try_start_1
    iget v0, v7, Lckj$d;->c:I

    invoke-virtual {v8, v2, v3, v6, v0}, Lckj$d;->b(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    .line 1270
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    :goto_1
    move-wide v0, v2

    .line 1282
    :goto_2
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    move-wide v0, v4

    :cond_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 1261
    :catch_0
    move-exception v0

    move-wide v4, v2

    .line 1265
    goto :goto_0

    .line 1264
    :catch_1
    move-exception v0

    move-wide v4, v2

    goto :goto_0

    .line 1276
    :catch_2
    move-exception v0

    move-wide v0, v2

    .line 1280
    goto :goto_2

    .line 1279
    :catch_3
    move-exception v0

    move-wide v0, v2

    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_1
.end method
