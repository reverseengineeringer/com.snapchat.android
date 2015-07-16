.class final Lbar$b;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final mRecipient:Ljava/lang/String;

.field private final mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ltx;-><init>()V

    .line 277
    iput-object p1, p0, Lbar$b;->mRecipient:Ljava/lang/String;

    .line 278
    iput-object p2, p0, Lbar$b;->mTaskId:Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "https://feelinsonice-hrd.appspot.com"

    return-object v0
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/debug/request_client_log?recipientUsername="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbar$b;->mRecipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbar$b;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lqc;

    invoke-direct {v0}, Lqc;-><init>()V

    return-object v0
.end method
