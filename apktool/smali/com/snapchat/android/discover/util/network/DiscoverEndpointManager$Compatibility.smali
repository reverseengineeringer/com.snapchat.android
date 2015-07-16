.class public final enum Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compatibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum DEVICE_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum REGION_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 44
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 48
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "REGION_NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->REGION_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 52
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "DEVICE_NOT_SUPPORTED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->DEVICE_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 56
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->REGION_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->DEVICE_NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->$VALUES:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 69
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->NOT_SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->$VALUES:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-object v0
.end method
