.class public final enum Lcom/snapchat/android/discover/model/MediaState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/MediaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_CLIENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_CONTENT_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_ERROR_CODE_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_ERROR_CODE_UNKNOWN:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum AD_RESOLVE_TIMEOUT:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum RESOLVED_AD:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum RESOLVE_NEEDED:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum RESOLVING_AD:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum SUCCESS:Lcom/snapchat/android/discover/model/MediaState;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    .line 16
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "FETCHING_MEDIA"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    .line 20
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVE_NEEDED"

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->RESOLVE_NEEDED:Lcom/snapchat/android/discover/model/MediaState;

    .line 24
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVING_AD"

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->RESOLVING_AD:Lcom/snapchat/android/discover/model/MediaState;

    .line 28
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVED_AD"

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->RESOLVED_AD:Lcom/snapchat/android/discover/model/MediaState;

    .line 32
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    .line 36
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "DISK_FULL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 40
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "CONTENT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 44
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 48
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "EXTERNAL_STORAGE_UNAVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    .line 52
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "GENERIC_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 58
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_ERROR_CODE_INTERNAL_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 62
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_ERROR_CODE_INVALID_REQUEST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/discover/model/MediaState;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_ERROR_CODE_NETWORK_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 70
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_ERROR_CODE_NO_FILL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_ERROR_CODE_UNKNOWN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_UNKNOWN:Lcom/snapchat/android/discover/model/MediaState;

    .line 78
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_CONTENT_NO_FILL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CONTENT_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    .line 82
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_TIMEOUT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_TIMEOUT:Lcom/snapchat/android/discover/model/MediaState;

    .line 86
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "AD_RESOLVE_CLIENT_ERROR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CLIENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    .line 8
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->RESOLVE_NEEDED:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->RESOLVING_AD:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->RESOLVED_AD:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->DISK_FULL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->CONTENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_ERROR_CODE_UNKNOWN:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CONTENT_NO_FILL:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_TIMEOUT:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->AD_RESOLVE_CLIENT_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->$VALUES:[Lcom/snapchat/android/discover/model/MediaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-boolean p3, p0, Lcom/snapchat/android/discover/model/MediaState;->a:Z

    .line 93
    iput-boolean p4, p0, Lcom/snapchat/android/discover/model/MediaState;->b:Z

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/discover/model/MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->$VALUES:[Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/MediaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method


# virtual methods
.method public final isError()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/MediaState;->b:Z

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/MediaState;->a:Z

    return v0
.end method
