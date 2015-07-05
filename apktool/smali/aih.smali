.class public final Laih;
.super Laif;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laif",
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
    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v0

    sget-object v1, Lawq;->GEOFILTER_METADATA_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Laih;-><init>(Lalb;Lawp;)V

    .line 17
    return-void
.end method

.method private constructor <init>(Lalb;Lawp;)V
    .locals 0
    .param p1    # Lalb;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Laif;-><init>(Lalb;Lawp;)V

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

.method public final b(Ljava/lang/String;Laij$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laij$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-interface {p2}, Laij$a;->a()V

    .line 26
    return-void
.end method
