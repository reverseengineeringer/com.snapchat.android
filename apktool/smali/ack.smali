.class public final Lack;
.super Lmm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmm",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "discover"

    sput-object v0, Lack;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage;Lmm$a;)V
    .locals 7
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lmm$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "Lmm$a",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lmj;->a()Lmj;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lale;->a()Lale;

    move-result-object v3

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lack;-><init>(Lmj;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;Ljava/util/Timer;Lcom/snapchat/android/discover/model/DSnapPage;Lmm$a;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lmj;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;Ljava/util/Timer;Lcom/snapchat/android/discover/model/DSnapPage;Lmm$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmj;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;",
            "Lale;",
            "Ljava/util/Timer;",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "Lmm$a",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lmm;-><init>(Ljava/lang/Object;Lmj;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lale;Ljava/util/Timer;Lmm$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    .line 67
    const-string v3, "media_zipped_with_overlay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v0, "media_zipped_with_overlay"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 70
    :cond_0
    const-string v3, "media_zipped_with_overlay"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "content"

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "imp-url"

    const-string v3, "imp-url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object v1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lack;->a:Ljava/lang/String;

    return-object v0
.end method
