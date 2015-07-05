.class public final enum Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/DrawingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawingEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

.field public static final enum COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

.field public static final enum STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    const-string v1, "COMPLETED_STROKE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    new-instance v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    const-string v1, "STARTED_STROKE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->COMPLETED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->STARTED_STROKE:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->$VALUES:[Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->$VALUES:[Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    return-object v0
.end method
