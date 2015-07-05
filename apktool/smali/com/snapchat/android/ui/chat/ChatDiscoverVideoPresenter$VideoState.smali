.class public final enum Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

.field public static final enum ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

.field public static final enum LOADING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

.field public static final enum PAUSED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

.field public static final enum PLAYING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

.field public static final enum STOPPED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    .line 25
    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PAUSED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    .line 26
    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->STOPPED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    .line 27
    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->LOADING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    .line 28
    new-instance v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PLAYING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PAUSED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->STOPPED:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->LOADING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PLAYING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->$VALUES:[Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->$VALUES:[Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    return-object v0
.end method
