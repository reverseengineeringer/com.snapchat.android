.class final Lblx$a;
.super Lbmb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lbzx;

.field private final b:Lblw;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmb;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>(Lblw;Lbzx;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lblw;",
            "Lbzx;",
            "Ljava/util/List",
            "<",
            "Lblu;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lbmb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lbmb;-><init>()V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lblx$a;->e:J

    .line 205
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p2, p0, Lblx$a;->a:Lbzx;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lbzx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lblw;->a(Ljava/lang/String;)Lblw;

    move-result-object v0

    iput-object v0, p0, Lblx$a;->b:Lblw;

    .line 209
    invoke-static {p3}, Lbmp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lblx$a;->c:Ljava/util/List;

    .line 210
    invoke-static {p4}, Lbmp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lblx$a;->d:Ljava/util/List;

    .line 211
    return-void
.end method

.method private a(Lbzv;Z)J
    .locals 11

    .prologue
    .line 230
    const-wide/16 v4, 0x0

    .line 232
    const/4 v0, 0x0

    .line 233
    if-eqz p2, :cond_7

    .line 234
    new-instance v0, Lbzu;

    invoke-direct {v0}, Lbzu;-><init>()V

    move-object v2, v0

    move-object p1, v0

    .line 237
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lblx$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_6

    .line 238
    iget-object v0, p0, Lblx$a;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblu;

    .line 239
    iget-object v1, p0, Lblx$a;->d:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmb;

    .line 241
    invoke-static {}, Lblx;->b()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lbzv;->b([B)Lbzv;

    .line 242
    iget-object v3, p0, Lblx$a;->a:Lbzx;

    invoke-interface {p1, v3}, Lbzv;->b(Lbzx;)Lbzv;

    .line 243
    invoke-static {}, Lblx;->c()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lbzv;->b([B)Lbzv;

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const/4 v3, 0x0

    iget-object v8, v0, Lblu;->a:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    :goto_2
    if-ge v3, v8, :cond_0

    .line 247
    invoke-virtual {v0, v3}, Lblu;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    move-result-object v9

    .line 248
    invoke-static {}, Lblx;->d()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lbzv;->b([B)Lbzv;

    move-result-object v9

    .line 249
    invoke-virtual {v0, v3}, Lblu;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    move-result-object v9

    .line 250
    invoke-static {}, Lblx;->c()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lbzv;->b([B)Lbzv;

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    :cond_0
    invoke-virtual {v1}, Lbmb;->a()Lblw;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    const-string v3, "Content-Type: "

    invoke-interface {p1, v3}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    move-result-object v3

    .line 257
    invoke-virtual {v0}, Lblw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    move-result-object v0

    .line 258
    invoke-static {}, Lblx;->c()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lbzv;->b([B)Lbzv;

    .line 261
    :cond_1
    invoke-virtual {v1}, Lbmb;->b()J

    move-result-wide v0

    .line 262
    const-wide/16 v8, -0x1

    cmp-long v3, v0, v8

    if-eqz v3, :cond_3

    .line 263
    const-string v3, "Content-Length: "

    invoke-interface {p1, v3}, Lbzv;->b(Ljava/lang/String;)Lbzv;

    move-result-object v3

    .line 264
    invoke-interface {v3, v0, v1}, Lbzv;->j(J)Lbzv;

    move-result-object v3

    .line 265
    invoke-static {}, Lblx;->c()[B

    move-result-object v8

    invoke-interface {v3, v8}, Lbzv;->b([B)Lbzv;

    .line 272
    :cond_2
    invoke-static {}, Lblx;->c()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lbzv;->b([B)Lbzv;

    .line 274
    if-eqz p2, :cond_5

    .line 275
    add-long/2addr v0, v4

    .line 280
    :goto_3
    invoke-static {}, Lblx;->c()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lbzv;->b([B)Lbzv;

    .line 237
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide v4, v0

    goto/16 :goto_1

    .line 266
    :cond_3
    if-eqz p2, :cond_2

    .line 268
    invoke-virtual {v2}, Lbzu;->p()V

    .line 269
    const-wide/16 v4, -0x1

    .line 293
    :cond_4
    :goto_4
    return-wide v4

    .line 277
    :cond_5
    iget-object v0, p0, Lblx$a;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmb;

    invoke-virtual {v0, p1}, Lbmb;->a(Lbzv;)V

    move-wide v0, v4

    goto :goto_3

    .line 283
    :cond_6
    invoke-static {}, Lblx;->b()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lbzv;->b([B)Lbzv;

    .line 284
    iget-object v0, p0, Lblx$a;->a:Lbzx;

    invoke-interface {p1, v0}, Lbzv;->b(Lbzx;)Lbzv;

    .line 285
    invoke-static {}, Lblx;->b()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lbzv;->b([B)Lbzv;

    .line 286
    invoke-static {}, Lblx;->c()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lbzv;->b([B)Lbzv;

    .line 288
    if-eqz p2, :cond_4

    .line 289
    iget-wide v0, v2, Lbzu;->b:J

    add-long/2addr v4, v0

    .line 290
    invoke-virtual {v2}, Lbzu;->p()V

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lblw;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lblx$a;->b:Lblw;

    return-object v0
.end method

.method public final a(Lbzv;)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lblx$a;->a(Lbzv;Z)J

    .line 298
    return-void
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 218
    iget-wide v0, p0, Lblx$a;->e:J

    .line 219
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lblx$a;->a(Lbzv;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lblx$a;->e:J

    goto :goto_0
.end method
