.class final Lcom/snapchat/android/util/chat/SecureChatSession$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/chat/SecureChatSession$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$2fe2f418:[I

.field public static final enum CONNECTED$7133d94d:I

.field public static final enum DISCONNECTED$7133d94d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 99
    sput v3, Lcom/snapchat/android/util/chat/SecureChatSession$b;->DISCONNECTED$7133d94d:I

    .line 100
    sput v0, Lcom/snapchat/android/util/chat/SecureChatSession$b;->CONNECTED$7133d94d:I

    .line 98
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/snapchat/android/util/chat/SecureChatSession$b;->DISCONNECTED$7133d94d:I

    aput v2, v0, v1

    sget v1, Lcom/snapchat/android/util/chat/SecureChatSession$b;->CONNECTED$7133d94d:I

    aput v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$b;->$VALUES$2fe2f418:[I

    return-void
.end method
