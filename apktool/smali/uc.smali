.class public final Luc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luc$a;
    }
.end annotation


# static fields
.field public static final APPLICATION_ZIP:Ljava/lang/String; = "application/zip"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final NO_RESPONSE_STATUS_CODE:I


# instance fields
.field public final mBuffer:Lbfk;

.field public final mCaughtException:Ljava/lang/Exception;

.field public final mNetworkType:Ljava/lang/String;

.field public final mRequestId:Ljava/lang/String;

.field public final mResponseBodySize:J

.field public final mResponseCode:I

.field private final mResponseHeaders:Lug;

.field public final mResponseMessage:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    const/16 v4, 0x190

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v1 .. v11}, Luc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbfk;Lug;Ljava/lang/String;Ljava/lang/Exception;J)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbfk;Lug;Ljava/lang/String;Ljava/lang/Exception;J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Luc;->mUrl:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Luc;->mNetworkType:Ljava/lang/String;

    .line 49
    iput p3, p0, Luc;->mResponseCode:I

    .line 50
    iput-object p4, p0, Luc;->mResponseMessage:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Luc;->mBuffer:Lbfk;

    .line 52
    iput-object p7, p0, Luc;->mRequestId:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Luc;->mResponseHeaders:Lug;

    .line 54
    iput-object p8, p0, Luc;->mCaughtException:Ljava/lang/Exception;

    .line 55
    iput-wide p9, p0, Luc;->mResponseBodySize:J

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbfk;Lug;Ljava/lang/String;Ljava/lang/Exception;JB)V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p10}, Luc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbfk;Lug;Ljava/lang/String;Ljava/lang/Exception;J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Luc;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Luc;->mResponseHeaders:Lug;

    invoke-virtual {v0, p1}, Lug;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Luc;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Luc;->mBuffer:Lbfk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luc;->mBuffer:Lbfk;

    invoke-interface {v0}, Lbfk;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Luc;->mCaughtException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget v0, p0, Luc;->mResponseCode:I

    invoke-static {v0}, Latq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Luc;->mBuffer:Lbfk;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Luc;->mBuffer:Lbfk;

    invoke-interface {v1}, Lbfk;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Luc;->mBuffer:Lbfk;

    invoke-interface {v3}, Lbfk;->a()I

    move-result v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "[Success (%s bytes)]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Luc;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Luc;->mCaughtException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "[Failed %s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Luc;->mCaughtException:Ljava/lang/Exception;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Luc;->mResponseCode:I

    if-eqz v0, :cond_2

    .line 171
    const-string v0, "[Failed HTTP %d]"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Luc;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "[Failed unknown]"

    goto :goto_0
.end method
