.class public final Lbsy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lbqw;)Lbsy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    sget-object v0, Lbsd;->j:Lbsd;

    iget-object v0, v0, Lbsd;->n:Ljava/lang/String;

    sget-object v3, Lbsd;->j:Lbsd;

    iget-object v3, v3, Lbsd;->o:Ljava/lang/String;

    invoke-interface {p0, v0, v3}, Lbqw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 37
    :goto_1
    if-eqz v1, :cond_1

    .line 38
    const-string v0, "optOutStatusSet"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    :goto_2
    if-eqz v0, :cond_0

    .line 42
    const-string v0, "optOutStatus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    :goto_3
    new-instance v1, Lbsy;

    invoke-direct {v1, v0}, Lbsy;-><init>(Z)V

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    invoke-static {}, Lbtd;->b()V

    goto :goto_1

    .line 44
    :cond_0
    sget-object v0, Lbsd;->m:Lbsd;

    iget-object v0, v0, Lbsd;->n:Ljava/lang/String;

    sget-object v1, Lbsd;->m:Lbsd;

    iget-object v1, v1, Lbsd;->o:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lbqw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
