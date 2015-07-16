.class public final enum Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum IMAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum OVERLAY_ITEM:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;


# instance fields
.field private final a:Lcom/snapchat/android/discover/model/MediaState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "IMAGE"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->IMAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 27
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "VIDEO"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 28
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "OVERLAY_ITEM"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->OVERLAY_ITEM:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 29
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "LOCAL_WEBPAGE"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 30
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "REMOTE_VIDEO"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->IMAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->OVERLAY_ITEM:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a:Lcom/snapchat/android/discover/model/MediaState;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public static valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method


# virtual methods
.method public final getDefaultMetadataLoadingState()Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method
