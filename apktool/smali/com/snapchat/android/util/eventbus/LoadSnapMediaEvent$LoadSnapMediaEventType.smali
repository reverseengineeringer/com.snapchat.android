.class public final enum Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadSnapMediaEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

.field public static final enum ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

.field public static final enum INITIATED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->INITIATED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    .line 10
    new-instance v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->INITIATED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->$VALUES:[Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->$VALUES:[Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    return-object v0
.end method
