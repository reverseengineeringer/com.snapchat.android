.class public final Lzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/otto/Bus;

.field private final b:Latx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Latx;

    invoke-direct {v1}, Latx;-><init>()V

    invoke-direct {p0, v0, v1}, Lzn;-><init>(Lcom/squareup/otto/Bus;Latx;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Latx;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzn;->a:Lcom/squareup/otto/Bus;

    .line 28
    iput-object p2, p0, Lzn;->b:Latx;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Latx;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v0, "TutorialToolTipGenerator"

    const-string v1, "Showing tutorial tool tip: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lbbg;

    const/4 v1, 0x0

    const/high16 v3, -0x4c000000

    const/4 v4, -0x1

    const-string v6, "TutorialToolTipGenerator"

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    .line 42
    iget-object v1, p0, Lzn;->a:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
