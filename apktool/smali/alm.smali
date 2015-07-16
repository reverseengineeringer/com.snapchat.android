.class public final Lalm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mPrompt:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt"
    .end annotation
.end field


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptchaResponse [prompt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lalm;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
