.class public final Loc;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/Task$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
