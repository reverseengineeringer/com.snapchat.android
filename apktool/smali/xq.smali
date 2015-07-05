.class public Lxq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-object v2, p0, Lxq;->b:Ljava/lang/String;

    .line 61
    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    :try_start_0
    new-instance v1, Lcgg;

    invoke-direct {v1, v2}, Lcgg;-><init>(Ljava/lang/Object;)V

    iget-wide v2, v1, Lchg;->a:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    new-instance v3, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v4, "Malformed expiration dateTime"

    invoke-direct {v3, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    const-string v3, "dateTime"

    invoke-virtual {v1, v3, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
