.class public final enum Lcom/snapchat/android/Timber$LogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/Timber$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/Timber$LogType;

.field public static final enum BITMAP_POOL_MONITOR:Lcom/snapchat/android/Timber$LogType;

.field public static final enum CHAT:Lcom/snapchat/android/Timber$LogType;

.field public static final enum DEBUG:Lcom/snapchat/android/Timber$LogType;

.field public static final enum DOWNLOAD_PROGRESS:Lcom/snapchat/android/Timber$LogType;

.field public static final enum ERROR_WITHOUT_TRACE:Lcom/snapchat/android/Timber$LogType;

.field public static final enum ERROR_WITH_TRACE:Lcom/snapchat/android/Timber$LogType;

.field public static final enum INFO:Lcom/snapchat/android/Timber$LogType;

.field public static final enum LOCATION_MANAGER:Lcom/snapchat/android/Timber$LogType;

.field public static final enum VERBOSE:Lcom/snapchat/android/Timber$LogType;

.field public static final enum WARNING:Lcom/snapchat/android/Timber$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->VERBOSE:Lcom/snapchat/android/Timber$LogType;

    .line 28
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->INFO:Lcom/snapchat/android/Timber$LogType;

    .line 29
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->DEBUG:Lcom/snapchat/android/Timber$LogType;

    .line 30
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->WARNING:Lcom/snapchat/android/Timber$LogType;

    .line 31
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "ERROR_WITHOUT_TRACE"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->ERROR_WITHOUT_TRACE:Lcom/snapchat/android/Timber$LogType;

    .line 32
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "ERROR_WITH_TRACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->ERROR_WITH_TRACE:Lcom/snapchat/android/Timber$LogType;

    .line 33
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "CHAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->CHAT:Lcom/snapchat/android/Timber$LogType;

    .line 34
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "LOCATION_MANAGER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->LOCATION_MANAGER:Lcom/snapchat/android/Timber$LogType;

    .line 35
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "BITMAP_POOL_MONITOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->BITMAP_POOL_MONITOR:Lcom/snapchat/android/Timber$LogType;

    .line 36
    new-instance v0, Lcom/snapchat/android/Timber$LogType;

    const-string v1, "DOWNLOAD_PROGRESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/Timber$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->DOWNLOAD_PROGRESS:Lcom/snapchat/android/Timber$LogType;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/Timber$LogType;

    sget-object v1, Lcom/snapchat/android/Timber$LogType;->VERBOSE:Lcom/snapchat/android/Timber$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/Timber$LogType;->INFO:Lcom/snapchat/android/Timber$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/Timber$LogType;->DEBUG:Lcom/snapchat/android/Timber$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/Timber$LogType;->WARNING:Lcom/snapchat/android/Timber$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/Timber$LogType;->ERROR_WITHOUT_TRACE:Lcom/snapchat/android/Timber$LogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/Timber$LogType;->ERROR_WITH_TRACE:Lcom/snapchat/android/Timber$LogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/Timber$LogType;->CHAT:Lcom/snapchat/android/Timber$LogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/Timber$LogType;->LOCATION_MANAGER:Lcom/snapchat/android/Timber$LogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/Timber$LogType;->BITMAP_POOL_MONITOR:Lcom/snapchat/android/Timber$LogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/Timber$LogType;->DOWNLOAD_PROGRESS:Lcom/snapchat/android/Timber$LogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/Timber$LogType;->$VALUES:[Lcom/snapchat/android/Timber$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/Timber$LogType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/snapchat/android/Timber$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/Timber$LogType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/Timber$LogType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->$VALUES:[Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v0}, [Lcom/snapchat/android/Timber$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/Timber$LogType;

    return-object v0
.end method
