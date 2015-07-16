.class public final enum Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/livechat/AdlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

.field public static final enum ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

.field public static final enum CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    const-string v1, "ADDLIVE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    .line 230
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    const-string v1, "CHAT_GATEWAY"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->CHAT_GATEWAY:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->$VALUES:[Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

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
    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->$VALUES:[Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    invoke-virtual {v0}, [Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    return-object v0
.end method
