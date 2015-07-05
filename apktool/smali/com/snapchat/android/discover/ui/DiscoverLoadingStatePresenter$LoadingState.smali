.class public final enum Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

.field public static final enum EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

.field public static final enum GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

.field public static final enum LOADED:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

.field public static final enum LOADING:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

.field public static final enum NETWORK_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADING:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    .line 24
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADED:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    .line 25
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->NETWORK_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    .line 26
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    const-string v1, "EXTERNAL_STORAGE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    .line 27
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    const-string v1, "GENERIC_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADING:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->LOADED:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->NETWORK_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->$VALUES:[Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->$VALUES:[Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    return-object v0
.end method
