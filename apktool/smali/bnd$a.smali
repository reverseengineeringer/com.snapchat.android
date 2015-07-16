.class public final Lbnd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lbnb;

.field public b:Lbna;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lbmu;

.field f:Lbmv$a;

.field public g:Lbne;

.field h:Lbnd;

.field i:Lbnd;

.field j:Lbnd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbnd$a;->c:I

    .line 234
    new-instance v0, Lbmv$a;

    invoke-direct {v0}, Lbmv$a;-><init>()V

    iput-object v0, p0, Lbnd$a;->f:Lbmv$a;

    .line 235
    return-void
.end method

.method private constructor <init>(Lbnd;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbnd$a;->c:I

    .line 238
    iget-object v0, p1, Lbnd;->a:Lbnb;

    iput-object v0, p0, Lbnd$a;->a:Lbnb;

    .line 239
    iget-object v0, p1, Lbnd;->b:Lbna;

    iput-object v0, p0, Lbnd$a;->b:Lbna;

    .line 240
    iget v0, p1, Lbnd;->c:I

    iput v0, p0, Lbnd$a;->c:I

    .line 241
    iget-object v0, p1, Lbnd;->d:Ljava/lang/String;

    iput-object v0, p0, Lbnd$a;->d:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lbnd;->e:Lbmu;

    iput-object v0, p0, Lbnd$a;->e:Lbmu;

    .line 243
    iget-object v0, p1, Lbnd;->f:Lbmv;

    invoke-virtual {v0}, Lbmv;->b()Lbmv$a;

    move-result-object v0

    iput-object v0, p0, Lbnd$a;->f:Lbmv$a;

    .line 244
    iget-object v0, p1, Lbnd;->g:Lbne;

    iput-object v0, p0, Lbnd$a;->g:Lbne;

    .line 245
    iget-object v0, p1, Lbnd;->h:Lbnd;

    iput-object v0, p0, Lbnd$a;->h:Lbnd;

    .line 246
    iget-object v0, p1, Lbnd;->i:Lbnd;

    iput-object v0, p0, Lbnd$a;->i:Lbnd;

    .line 247
    iget-object v0, p1, Lbnd;->j:Lbnd;

    iput-object v0, p0, Lbnd$a;->j:Lbnd;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lbnd;B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lbnd$a;-><init>(Lbnd;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lbnd;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p1, Lbnd;->g:Lbne;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p1, Lbnd;->h:Lbnd;

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    iget-object v0, p1, Lbnd;->i:Lbnd;

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    iget-object v0, p1, Lbnd;->j:Lbnd;

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lbmv;)Lbnd$a;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lbmv;->b()Lbmv$a;

    move-result-object v0

    iput-object v0, p0, Lbnd$a;->f:Lbmv$a;

    .line 301
    return-object p0
.end method

.method public final a(Lbnd;)Lbnd$a;
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lbnd$a;->a(Ljava/lang/String;Lbnd;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lbnd$a;->h:Lbnd;

    .line 312
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbnd$a;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lbnd$a;->f:Lbmv$a;

    invoke-virtual {v0, p1, p2}, Lbmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 281
    return-object p0
.end method

.method public final a()Lbnd;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lbnd$a;->a:Lbnb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lbnd$a;->b:Lbna;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lbnd$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbnd$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lbnd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbnd;-><init>(Lbnd$a;B)V

    return-object v0
.end method

.method public final b(Lbnd;)Lbnd$a;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lbnd$a;->a(Ljava/lang/String;Lbnd;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lbnd$a;->i:Lbnd;

    .line 318
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lbnd$a;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lbnd$a;->f:Lbmv$a;

    invoke-virtual {v0, p1, p2}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 290
    return-object p0
.end method

.method public final c(Lbnd;)Lbnd$a;
    .locals 2

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbnd;->g:Lbne;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iput-object p1, p0, Lbnd$a;->j:Lbnd;

    .line 336
    return-object p0
.end method
