.class public final synthetic Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->values()[Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->FAIL_TO_UPDATE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->AUTHENTICATION_ERROR:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->HAS_INTERNET_BUT_CONNECTION_FAIL:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->$SwitchMap$com$snapchat$android$util$eventbus$SnapMessageFeedRefreshedEvent$RefreshError:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->SERVER_FAILURE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
