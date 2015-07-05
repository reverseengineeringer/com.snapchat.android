.class public final Lbsz$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lbqw;Ljava/lang/String;Ljava/lang/String;)Lbsz;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-interface {p0, p1, p2}, Lbqw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 61
    :goto_1
    if-eqz v1, :cond_1

    new-instance v0, Lbsz;

    invoke-direct {v0, v1}, Lbsz;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-static {}, Lbtd;->b()V

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lbsz;

    invoke-direct {v0}, Lbsz;-><init>()V

    goto :goto_2
.end method
