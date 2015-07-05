.class public Lcom/facebook/crypto/Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/crypto/Entity;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/crypto/Entity;->mName:Ljava/lang/String;

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
