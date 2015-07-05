.class public Lcom/addlive/platform/InitStateChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errCode:I

.field private errMessage:Ljava/lang/String;

.field private state:Lcom/addlive/platform/InitState;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/addlive/platform/InitStateChangedEvent;->errCode:I

    .line 40
    iput-object p2, p0, Lcom/addlive/platform/InitStateChangedEvent;->errMessage:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/addlive/platform/InitStateChangedEvent;->state:Lcom/addlive/platform/InitState;

    .line 42
    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/addlive/platform/InitStateChangedEvent;->errCode:I

    return v0
.end method

.method public getErrMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/addlive/platform/InitStateChangedEvent;->errMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/addlive/platform/InitState;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/addlive/platform/InitStateChangedEvent;->state:Lcom/addlive/platform/InitState;

    return-object v0
.end method
