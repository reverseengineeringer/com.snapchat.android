.class public final Lma$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;
    .annotation build Lcgc;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation build Lcgc;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lbcc;
    .annotation build Lcgc;
    .end annotation
.end field

.field public i:J

.field final synthetic j:Lma;


# direct methods
.method private constructor <init>(Lma;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;Lbcc;J)V
    .locals 2
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p9    # Lbcc;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 400
    iput-object p1, p0, Lma$a;->j:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iget-object v0, p0, Lma$a;->j:Lma;

    iget-object v0, v0, Lma;->a:Landroid/content/res/Resources;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lma$a;->d:I

    .line 390
    iget-object v0, p0, Lma$a;->j:Lma;

    iget-object v0, v0, Lma;->a:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lma$a;->e:I

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lma$a;->f:Z

    .line 401
    iput p2, p0, Lma$a;->a:I

    .line 402
    iput-object p3, p0, Lma$a;->b:Ljava/lang/CharSequence;

    .line 403
    iput-object p4, p0, Lma$a;->c:Ljava/lang/CharSequence;

    .line 404
    iput p5, p0, Lma$a;->d:I

    .line 405
    iput p6, p0, Lma$a;->e:I

    .line 406
    iput-boolean p7, p0, Lma$a;->f:Z

    .line 407
    iput-object p8, p0, Lma$a;->g:Ljava/lang/String;

    .line 408
    iput-object p9, p0, Lma$a;->h:Lbcc;

    .line 409
    iput-wide p10, p0, Lma$a;->i:J

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lma;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;Lbcc;JB)V
    .locals 0

    .prologue
    .line 383
    invoke-direct/range {p0 .. p11}, Lma$a;-><init>(Lma;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;Lbcc;J)V

    return-void
.end method

.method private constructor <init>(Lma;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 412
    iput-object p1, p0, Lma$a;->j:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iget-object v0, p0, Lma$a;->j:Lma;

    iget-object v0, v0, Lma;->a:Landroid/content/res/Resources;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lma$a;->d:I

    .line 390
    iget-object v0, p0, Lma$a;->j:Lma;

    iget-object v0, v0, Lma;->a:Landroid/content/res/Resources;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lma$a;->e:I

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lma$a;->f:Z

    .line 413
    iput-object p2, p0, Lma$a;->g:Ljava/lang/String;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lma;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lma$a;-><init>(Lma;Ljava/lang/String;)V

    return-void
.end method
