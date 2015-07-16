.class final Lbar$a;
.super Lul;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lul;-><init>()V

    .line 257
    iput-object p1, p0, Lbar$a;->mRequestBody:Ljava/lang/String;

    .line 258
    return-void
.end method


# virtual methods
.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lbar$a;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, ""

    return-object v0
.end method
