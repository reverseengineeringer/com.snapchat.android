.class final synthetic Latv$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/snapchat/android/stories/StoriesThumbnailType;->values()[Lcom/snapchat/android/stories/StoriesThumbnailType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Latv$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    :try_start_0
    sget-object v0, Latv$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v1}, Lcom/snapchat/android/stories/StoriesThumbnailType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Latv$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v1}, Lcom/snapchat/android/stories/StoriesThumbnailType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Latv$3;->$SwitchMap$com$snapchat$android$stories$StoriesThumbnailType:[I

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v1}, Lcom/snapchat/android/stories/StoriesThumbnailType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
