.class public abstract Land;
.super Lui;
.source "SourceFile"

# interfaces
.implements Lanh;


# instance fields
.field final i:Landroid/content/Intent;

.field protected j:Lur;


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lui;-><init>()V

    .line 60
    iput-object p1, p0, Land;->i:Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Land;->mProvider:Luj;

    invoke-virtual {v0}, Luj;->a()Lur;

    move-result-object v0

    iput-object v0, p0, Land;->j:Lur;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Land;->i:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Do not send any network request for Snapkidz "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Land;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Land;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Land;->getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Land;->getResponseBuffer()Lbgk;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Land;->getRequestPayload()Ljava/lang/Object;

    move-result-object v5

    .line 80
    invoke-virtual {p0, v5}, Land;->getHeaders(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 82
    iget-object v0, p0, Land;->j:Lur;

    invoke-interface/range {v0 .. v5}, Lur;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbgk;Ljava/lang/Object;)Lus;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Land;->onResult(Lus;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
