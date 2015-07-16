.class public final Lacr;
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

.field public final c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field public final d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    new-instance v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;-><init>(Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V

    invoke-direct {p0, p1, v0}, Lacr;-><init>(Lcom/snapchat/android/discover/model/EditionOpenOrigin;Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/EditionOpenOrigin;Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lacr;->a:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lacr;->b:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lacr;->c:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 33
    iput-object p2, p0, Lacr;->d:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;

    .line 34
    return-void
.end method
