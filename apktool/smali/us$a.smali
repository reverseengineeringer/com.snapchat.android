.class public final Lus$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field mBuffer:Lbgk;

.field public mCaughtException:Ljava/lang/Exception;

.field private mNetworkType:Ljava/lang/String;

.field mRequestId:Ljava/lang/String;

.field mResponseBodySize:J

.field mResponseCode:I

.field mResponseHeaders:Lux;

.field mResponseMessage:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lus$a;->mResponseCode:I

    .line 206
    new-instance v0, Lux;

    invoke-direct {v0}, Lux;-><init>()V

    iput-object v0, p0, Lus$a;->mResponseHeaders:Lux;

    .line 211
    iput-object p1, p0, Lus$a;->mUrl:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lus$a;->mNetworkType:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public final a()Lus;
    .locals 13

    .prologue
    .line 251
    new-instance v1, Lus;

    iget-object v2, p0, Lus$a;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lus$a;->mNetworkType:Ljava/lang/String;

    iget v4, p0, Lus$a;->mResponseCode:I

    iget-object v5, p0, Lus$a;->mResponseMessage:Ljava/lang/String;

    iget-object v6, p0, Lus$a;->mBuffer:Lbgk;

    iget-object v7, p0, Lus$a;->mResponseHeaders:Lux;

    iget-object v8, p0, Lus$a;->mRequestId:Ljava/lang/String;

    iget-object v9, p0, Lus$a;->mCaughtException:Ljava/lang/Exception;

    iget-wide v10, p0, Lus$a;->mResponseBodySize:J

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lus;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbgk;Lux;Ljava/lang/String;Ljava/lang/Exception;JB)V

    return-object v1
.end method
