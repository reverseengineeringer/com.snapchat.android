.class public final Lajd;
.super Lajb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lajb",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    sget-object v1, Laxo;->GEOFILTER_METADATA_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Lajd;-><init>(Lalw;Laxn;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Lalw;Laxn;)V
    .locals 0
    .param p1    # Lalw;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lajb;-><init>(Lalw;Laxn;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lajf$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajf$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-interface {p2}, Lajf$a;->a()V

    .line 26
    return-void
.end method
