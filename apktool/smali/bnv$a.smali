.class abstract Lbnv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcbk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lbnv;


# direct methods
.method private constructor <init>(Lbnv;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lbnv$a;->b:Lbnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbnv;B)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lbnv$a;-><init>(Lbnv;)V

    return-void
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget-object v0, v0, Lbnv;->c:Lcax;

    invoke-interface {v0}, Lcax;->E_()Lcbl;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget v0, v0, Lbnv;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbnv$a;->b:Lbnv;

    iget v2, v2, Lbnv;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iput v2, v0, Lbnv;->e:I

    .line 347
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget v0, v0, Lbnv;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iput v2, v0, Lbnv;->f:I

    .line 349
    sget-object v0, Lbnj;->b:Lbnj;

    iget-object v1, p0, Lbnv$a;->b:Lbnv;

    iget-object v1, v1, Lbnv;->a:Lbmq;

    iget-object v2, p0, Lbnv$a;->b:Lbnv;

    iget-object v2, v2, Lbnv;->b:Lbmp;

    invoke-virtual {v0, v1, v2}, Lbnj;->a(Lbmq;Lbmp;)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget v0, v0, Lbnv;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    const/4 v1, 0x6

    iput v1, v0, Lbnv;->e:I

    .line 352
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget-object v0, v0, Lbnv;->b:Lbmp;

    iget-object v0, v0, Lbmp;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    iget-object v0, v0, Lbnv;->b:Lbmp;

    iget-object v0, v0, Lbmp;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbnq;->a(Ljava/net/Socket;)V

    .line 370
    iget-object v0, p0, Lbnv$a;->b:Lbnv;

    const/4 v1, 0x6

    iput v1, v0, Lbnv;->e:I

    .line 371
    return-void
.end method
