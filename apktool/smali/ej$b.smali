.class final Lej$b;
.super Lej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lej$a;

.field private final b:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lej$a;Ljava/lang/Character;)V
    .locals 4
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 574
    invoke-direct {p0}, Lej;-><init>()V

    .line 575
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lej$a;

    iput-object v0, p0, Lej$b;->a:Lej$a;

    .line 576
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lej$a;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Padding character %s was already in alphabet"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lco;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 578
    iput-object p2, p0, Lej$b;->b:Ljava/lang/Character;

    .line 579
    return-void

    :cond_1
    move v0, v1

    .line 576
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 571
    new-instance v0, Lej$a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lej$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lej$b;-><init>(Lej$a;Ljava/lang/Character;)V

    .line 572
    return-void
.end method

.method static synthetic a(Lej$b;)Lej$a;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lej$b;->a:Lej$a;

    return-object v0
.end method

.method static synthetic b(Lej$b;)Ljava/lang/Character;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lej$b;->b:Ljava/lang/Character;

    return-object v0
.end method


# virtual methods
.method final a(I)I
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lej$b;->a:Lej$a;

    iget v0, v0, Lej$a;->t:I

    iget-object v1, p0, Lej$b;->a:Lej$a;

    iget v1, v1, Lej$a;->u:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lem;->a(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method final a(Lel$b;)Lel$a;
    .locals 1

    .prologue
    .line 593
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v0, Lej$b$1;

    invoke-direct {v0, p0, p1}, Lej$b$1;-><init>(Lej$b;Lel$b;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    iget-object v1, p0, Lej$b;->a:Lej$a;

    invoke-virtual {v1}, Lej$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const/16 v1, 0x8

    iget-object v2, p0, Lej$b;->a:Lej$a;

    iget v2, v2, Lej$a;->s:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lej$b;->b:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 747
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 749
    :cond_1
    const-string v1, ".withPadChar("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lej$b;->b:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
