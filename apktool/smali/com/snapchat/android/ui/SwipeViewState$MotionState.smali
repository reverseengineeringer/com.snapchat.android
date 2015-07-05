.class public final enum Lcom/snapchat/android/ui/SwipeViewState$MotionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SwipeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/SwipeViewState$MotionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/SwipeViewState$MotionState;

.field public static final enum AUTO_SCROLLING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

.field public static final enum NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

.field public static final enum SWIPING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    const-string v1, "NOT_MOVING"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/SwipeViewState$MotionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 14
    new-instance v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    const-string v1, "SWIPING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/SwipeViewState$MotionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->SWIPING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 15
    new-instance v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    const-string v1, "AUTO_SCROLLING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/SwipeViewState$MotionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->AUTO_SCROLLING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->NOT_MOVING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->SWIPING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->AUTO_SCROLLING:Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->$VALUES:[Lcom/snapchat/android/ui/SwipeViewState$MotionState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/SwipeViewState$MotionState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/SwipeViewState$MotionState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/ui/SwipeViewState$MotionState;->$VALUES:[Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/SwipeViewState$MotionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/SwipeViewState$MotionState;

    return-object v0
.end method
