.class abstract Lbmu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcaj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lbmu;


# direct methods
.method private constructor <init>(Lbmu;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lbmu$a;->b:Lbmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbmu;B)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lbmu$a;-><init>(Lbmu;)V

    return-void
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget-object v0, v0, Lbmu;->c:Lbzw;

    invoke-interface {v0}, Lbzw;->E_()Lcak;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget v0, v0, Lbmu;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbmu$a;->b:Lbmu;

    iget v2, v2, Lbmu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iput v2, v0, Lbmu;->e:I

    .line 347
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget v0, v0, Lbmu;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iput v2, v0, Lbmu;->f:I

    .line 349
    sget-object v0, Lbmi;->b:Lbmi;

    iget-object v1, p0, Lbmu$a;->b:Lbmu;

    iget-object v1, v1, Lbmu;->a:Lblp;

    iget-object v2, p0, Lbmu$a;->b:Lbmu;

    iget-object v2, v2, Lbmu;->b:Lblo;

    invoke-virtual {v0, v1, v2}, Lbmi;->a(Lblp;Lblo;)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget v0, v0, Lbmu;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    const/4 v1, 0x6

    iput v1, v0, Lbmu;->e:I

    .line 352
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget-object v0, v0, Lbmu;->b:Lblo;

    iget-object v0, v0, Lblo;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    iget-object v0, v0, Lbmu;->b:Lblo;

    iget-object v0, v0, Lblo;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbmp;->a(Ljava/net/Socket;)V

    .line 370
    iget-object v0, p0, Lbmu$a;->b:Lbmu;

    const/4 v1, 0x6

    iput v1, v0, Lbmu;->e:I

    .line 371
    return-void
.end method
