.class public final enum Lcom/snapchat/android/networkmanager/DownloadPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/networkmanager/DownloadPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum BACKGROUND_HIGHEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum BACKGROUND_LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "BACKGROUND_LOWEST"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 16
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "BACKGROUND_LOW"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 21
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "BACKGROUND_MEDIUM"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 26
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "BACKGROUND_HIGH"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 31
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "BACKGROUND_HIGHEST"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGHEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 36
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "LOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 40
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "MEDIUM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 44
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "MEDIUM_HIGH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 49
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "HIGH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOWEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGHEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM_HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->$VALUES:[Lcom/snapchat/android/networkmanager/DownloadPriority;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->$VALUES:[Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, [Lcom/snapchat/android/networkmanager/DownloadPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method


# virtual methods
.method public final isBackground()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->LOW:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
