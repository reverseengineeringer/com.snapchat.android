.class public final Lpx;
.super Ltv;
.source "SourceFile"


# instance fields
.field private final mIsPostRequest:Z

.field private final mPayload:Ljava/lang/Object;

.field private final mResponseBuffer:Lbfk;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbfk;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ltv;-><init>()V

    .line 19
    iput-object p1, p0, Lpx;->mUrl:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lpx;->mResponseBuffer:Lbfk;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lpx;->mPayload:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpx;->mIsPostRequest:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbfk;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ltv;-><init>()V

    .line 26
    iput-object p1, p0, Lpx;->mUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lpx;->mResponseBuffer:Lbfk;

    .line 28
    iput-object p3, p0, Lpx;->mPayload:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpx;->mIsPostRequest:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final a_()Lbfk;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lpx;->mResponseBuffer:Lbfk;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lpx;->mPayload:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lpx;->mIsPostRequest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    goto :goto_0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lpx;->mUrl:Ljava/lang/String;

    return-object v0
.end method
