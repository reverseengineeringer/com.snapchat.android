.class public final enum Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ProgressiveSaveButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

.field public static final enum READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

.field public static final enum SAVED:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

.field public static final enum SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 72
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 73
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    const-string v1, "SAVED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVED:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVED:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->$VALUES:[Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->$VALUES:[Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    return-object v0
.end method
