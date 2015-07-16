.class public final Laan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/otto/Bus;

.field private final b:Lauv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lauv;

    invoke-direct {v1}, Lauv;-><init>()V

    invoke-direct {p0, v0, v1}, Laan;-><init>(Lcom/squareup/otto/Bus;Lauv;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Lauv;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Laan;->a:Lcom/squareup/otto/Bus;

    .line 28
    iput-object p2, p0, Laan;->b:Lauv;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 36
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lauv;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 39
    new-instance v1, Lbcg;

    const/high16 v2, -0x4c000000

    const/4 v3, -0x1

    const-string v4, "TutorialToolTipGenerator"

    invoke-direct {v1, v0, v2, v3, v4}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 42
    iget-object v0, p0, Laan;->a:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
