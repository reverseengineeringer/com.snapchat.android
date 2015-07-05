.class public final Lbmc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lbma;

.field public b:Lblz;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lblt;

.field f:Lblu$a;

.field public g:Lbmd;

.field h:Lbmc;

.field i:Lbmc;

.field j:Lbmc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbmc$a;->c:I

    .line 234
    new-instance v0, Lblu$a;

    invoke-direct {v0}, Lblu$a;-><init>()V

    iput-object v0, p0, Lbmc$a;->f:Lblu$a;

    .line 235
    return-void
.end method

.method private constructor <init>(Lbmc;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lbmc$a;->c:I

    .line 238
    iget-object v0, p1, Lbmc;->a:Lbma;

    iput-object v0, p0, Lbmc$a;->a:Lbma;

    .line 239
    iget-object v0, p1, Lbmc;->b:Lblz;

    iput-object v0, p0, Lbmc$a;->b:Lblz;

    .line 240
    iget v0, p1, Lbmc;->c:I

    iput v0, p0, Lbmc$a;->c:I

    .line 241
    iget-object v0, p1, Lbmc;->d:Ljava/lang/String;

    iput-object v0, p0, Lbmc$a;->d:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lbmc;->e:Lblt;

    iput-object v0, p0, Lbmc$a;->e:Lblt;

    .line 243
    iget-object v0, p1, Lbmc;->f:Lblu;

    invoke-virtual {v0}, Lblu;->b()Lblu$a;

    move-result-object v0

    iput-object v0, p0, Lbmc$a;->f:Lblu$a;

    .line 244
    iget-object v0, p1, Lbmc;->g:Lbmd;

    iput-object v0, p0, Lbmc$a;->g:Lbmd;

    .line 245
    iget-object v0, p1, Lbmc;->h:Lbmc;

    iput-object v0, p0, Lbmc$a;->h:Lbmc;

    .line 246
    iget-object v0, p1, Lbmc;->i:Lbmc;

    iput-object v0, p0, Lbmc$a;->i:Lbmc;

    .line 247
    iget-object v0, p1, Lbmc;->j:Lbmc;

    iput-object v0, p0, Lbmc$a;->j:Lbmc;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lbmc;B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lbmc$a;-><init>(Lbmc;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lbmc;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p1, Lbmc;->g:Lbmd;

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
    iget-object v0, p1, Lbmc;->h:Lbmc;

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
    iget-object v0, p1, Lbmc;->i:Lbmc;

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
    iget-object v0, p1, Lbmc;->j:Lbmc;

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
.method public final a(Lblu;)Lbmc$a;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lblu;->b()Lblu$a;

    move-result-object v0

    iput-object v0, p0, Lbmc$a;->f:Lblu$a;

    .line 301
    return-object p0
.end method

.method public final a(Lbmc;)Lbmc$a;
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lbmc$a;->a(Ljava/lang/String;Lbmc;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lbmc$a;->h:Lbmc;

    .line 312
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbmc$a;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lbmc$a;->f:Lblu$a;

    invoke-virtual {v0, p1, p2}, Lblu$a;->b(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 281
    return-object p0
.end method

.method public final a()Lbmc;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lbmc$a;->a:Lbma;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lbmc$a;->b:Lblz;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lbmc$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbmc$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lbmc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbmc;-><init>(Lbmc$a;B)V

    return-object v0
.end method

.method public final b(Lbmc;)Lbmc$a;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lbmc$a;->a(Ljava/lang/String;Lbmc;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lbmc$a;->i:Lbmc;

    .line 318
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lbmc$a;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lbmc$a;->f:Lblu$a;

    invoke-virtual {v0, p1, p2}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 290
    return-object p0
.end method

.method public final c(Lbmc;)Lbmc$a;
    .locals 2

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbmc;->g:Lbmd;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iput-object p1, p0, Lbmc$a;->j:Lbmc;

    .line 336
    return-object p0
.end method
