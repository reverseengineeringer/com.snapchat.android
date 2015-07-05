.class public final Luc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field mBuffer:Lbfk;

.field public mCaughtException:Ljava/lang/Exception;

.field private mNetworkType:Ljava/lang/String;

.field mRequestId:Ljava/lang/String;

.field mResponseBodySize:J

.field mResponseCode:I

.field mResponseHeaders:Lug;

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

    iput v0, p0, Luc$a;->mResponseCode:I

    .line 206
    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    iput-object v0, p0, Luc$a;->mResponseHeaders:Lug;

    .line 211
    iput-object p1, p0, Luc$a;->mUrl:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Luc$a;->mNetworkType:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public final a()Luc;
    .locals 13

    .prologue
    .line 251
    new-instance v1, Luc;

    iget-object v2, p0, Luc$a;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Luc$a;->mNetworkType:Ljava/lang/String;

    iget v4, p0, Luc$a;->mResponseCode:I

    iget-object v5, p0, Luc$a;->mResponseMessage:Ljava/lang/String;

    iget-object v6, p0, Luc$a;->mBuffer:Lbfk;

    iget-object v7, p0, Luc$a;->mResponseHeaders:Lug;

    iget-object v8, p0, Luc$a;->mRequestId:Ljava/lang/String;

    iget-object v9, p0, Luc$a;->mCaughtException:Ljava/lang/Exception;

    iget-wide v10, p0, Luc$a;->mResponseBodySize:J

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Luc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lbfk;Lug;Ljava/lang/String;Ljava/lang/Exception;JB)V

    return-object v1
.end method
