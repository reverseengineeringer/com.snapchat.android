.class public final Labr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lld;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;-><init>()V

    invoke-direct {p0, v0}, Labr;-><init>(Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labr;->a:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labr;->b:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labr;->c:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Labr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lld;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lld;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Labr;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
