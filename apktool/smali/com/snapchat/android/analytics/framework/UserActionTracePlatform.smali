.class public Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 16
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Lbaj;->a(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 17
    return-void
.end method
