.class public final Lcom/snapchat/android/ads/AdRequestError;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ads/AdRequestError$1;,
        Lcom/snapchat/android/ads/AdRequestError$ErrorType;,
        Lcom/snapchat/android/ads/AdRequestError$ErrorCode;
    }
.end annotation


# instance fields
.field public mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field private mErrorType:Lcom/snapchat/android/ads/AdRequestError$ErrorType;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/ads/AdRequestError$ErrorCode;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 16
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$1;->$SwitchMap$com$snapchat$android$ads$AdRequestError$ErrorCode:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorType;->SERVER_SIDE_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorType;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/ads/AdRequestError;->mErrorType:Lcom/snapchat/android/ads/AdRequestError$ErrorType;

    .line 17
    return-void

    .line 16
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorType;->CLIENT_SIDE_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
