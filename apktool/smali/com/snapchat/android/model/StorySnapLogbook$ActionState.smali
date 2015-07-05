.class public final enum Lcom/snapchat/android/model/StorySnapLogbook$ActionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/StorySnapLogbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/StorySnapLogbook$ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public static final enum DELETED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public static final enum DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public static final enum READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public static final enum SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field public static final enum SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 184
    new-instance v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 185
    new-instance v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    const-string v1, "DELETING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 186
    new-instance v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    const-string v1, "SAVED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 187
    new-instance v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->$VALUES:[Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnapLogbook$ActionState;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/StorySnapLogbook$ActionState;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->$VALUES:[Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    return-object v0
.end method
