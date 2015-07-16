.class public final enum Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SequenceNumberState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field public static final enum NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field public static final enum UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field public static final enum UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    const-string v1, "NOT_UPDATED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 86
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 87
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->$VALUES:[Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->$VALUES:[Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    return-object v0
.end method
