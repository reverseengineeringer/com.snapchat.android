.class public interface abstract Lcom/addlive/impl/cam/ADLCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getCameraDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevice()Ljava/lang/String;
.end method

.method public abstract processProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setDevice(Ljava/lang/String;)V
.end method

.method public abstract start(Ljava/lang/Object;)V
.end method

.method public abstract stop()V
.end method
