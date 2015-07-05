.class public final enum Lcom/snapchat/android/model/Snap$TargetView;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Snap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Snap$TargetView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Snap$TargetView;

.field public static final enum CHAT:Lcom/snapchat/android/model/Snap$TargetView;

.field public static final enum CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

.field public static final enum FEED:Lcom/snapchat/android/model/Snap$TargetView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/snapchat/android/model/Snap$TargetView;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$TargetView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 24
    new-instance v0, Lcom/snapchat/android/model/Snap$TargetView;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Snap$TargetView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    .line 25
    new-instance v0, Lcom/snapchat/android/model/Snap$TargetView;

    const-string v1, "CHAT_AND_FEED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Snap$TargetView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/Snap$TargetView;

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/Snap$TargetView;->$VALUES:[Lcom/snapchat/android/model/Snap$TargetView;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/model/Snap$TargetView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Snap$TargetView;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Snap$TargetView;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/model/Snap$TargetView;->$VALUES:[Lcom/snapchat/android/model/Snap$TargetView;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Snap$TargetView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Snap$TargetView;

    return-object v0
.end method
