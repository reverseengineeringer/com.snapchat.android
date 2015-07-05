.class public final enum Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public static final enum ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public static final enum TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public static final enum YES_NO_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public static final enum YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v1, "TOAST"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v1, "ONE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v1, "YES_NO_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const-string v1, "YES_NO_DONTASK_DIALOG"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->$VALUES:[Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->$VALUES:[Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    return-object v0
.end method
