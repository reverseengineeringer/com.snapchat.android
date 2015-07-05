.class public final Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Incompatibilities: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, ""

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v0, " + "

    move-object v1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
