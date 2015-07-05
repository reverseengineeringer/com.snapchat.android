.class public final enum Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

.field public static final enum EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

.field public static final enum FAILED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

.field public static final enum RUNNING:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 40
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 41
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    const-string v1, "EMPTY_RESPONSE_REACHED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    sget-object v1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->$VALUES:[Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->$VALUES:[Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    return-object v0
.end method
