.class public final enum Lcom/snapchat/android/ads/AdRequestError$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/AdRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ads/AdRequestError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ADMANAGER_INACTIVE:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum EMPTY_CONTENT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ERROR_CODE_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum ERROR_CODE_UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum TIMEOUT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

.field public static final enum UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;


# instance fields
.field private final mMetricValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_INTERNAL_ERROR"

    const-string v2, "internal_error"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 41
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_INVALID_REQUEST"

    const-string v2, "invalid_request"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 45
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_NETWORK_ERROR"

    const-string v2, "network_error"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 49
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_NO_FILL"

    const-string v2, "no_fill"

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 53
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_UNKNOWN"

    const-string v2, "unknown_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 57
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "CONTENT_NO_FILL"

    const/4 v2, 0x5

    const-string v3, "no_fill"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 61
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "EMPTY_CONTENT"

    const/4 v2, 0x6

    const-string v3, "empty_content"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->EMPTY_CONTENT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 65
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "INVALID_AD_UNIT_URL"

    const/4 v2, 0x7

    const-string v3, "invalid_ad_unit_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 69
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ADMANAGER_INACTIVE"

    const/16 v2, 0x8

    const-string v3, "client_error"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ADMANAGER_INACTIVE:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 73
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x9

    const-string v3, "unknown_error"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 77
    new-instance v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "TIMEOUT"

    const/16 v2, 0xa

    const-string v3, "timeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->TIMEOUT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->EMPTY_CONTENT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ADMANAGER_INACTIVE:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->TIMEOUT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->$VALUES:[Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->mMetricValue:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ads/AdRequestError$ErrorCode;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ads/AdRequestError$ErrorCode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->$VALUES:[Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    invoke-virtual {v0}, [Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getMetricValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->mMetricValue:Ljava/lang/String;

    return-object v0
.end method
